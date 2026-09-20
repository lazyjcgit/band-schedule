#include "classic_spp_channel.h"

#include <initguid.h>
#include <winsock2.h>
#include <ws2bth.h>
#include <bluetoothapis.h>
#include <flutter/encodable_value.h>
#include <flutter/event_channel.h>
#include <flutter/event_sink.h>
#include <flutter/event_stream_handler_functions.h>
#include <flutter/method_channel.h>
#include <flutter/standard_method_codec.h>
#include <winrt/Windows.Devices.Bluetooth.h>
#include <winrt/Windows.Devices.Bluetooth.Rfcomm.h>
#include <winrt/Windows.Foundation.Collections.h>
#include <winrt/Windows.Foundation.h>
#include <winrt/base.h>

#include <algorithm>
#include <atomic>
#include <cstdint>
#include <chrono>
#include <cstdio>
#include <cstring>
#include <iomanip>
#include <memory>
#include <mutex>
#include <sstream>
#include <string>
#include <thread>
#include <unordered_map>
#include <unordered_set>
#include <vector>

namespace {

using flutter::EncodableList;
using flutter::EncodableMap;
using flutter::EncodableValue;

SOCKET g_socket = INVALID_SOCKET;
SOCKET g_connect_socket = INVALID_SOCKET;
std::mutex g_socket_mutex;
std::thread g_read_thread;
std::atomic_bool g_read_running(false);
std::atomic_bool g_emit_disconnect_on_read_close(true);
std::atomic_uint64_t g_connect_generation(0);
std::atomic_uint64_t g_scan_generation(0);
std::unique_ptr<flutter::EventSink<EncodableValue>> g_event_sink;
std::unique_ptr<flutter::EventSink<EncodableValue>> g_scan_event_sink;
std::mutex g_event_sink_mutex;
constexpr char kZeppBtbrServiceUuid[] =
    "00000022-0000-3512-2118-0009af100700";

std::string WideToUtf8(const wchar_t* text) {
  if (text == nullptr || text[0] == L'\0') {
    return "";
  }
  const int size = WideCharToMultiByte(CP_UTF8, 0, text, -1, nullptr, 0, nullptr, nullptr);
  if (size <= 1) {
    return "";
  }
  std::string result(static_cast<size_t>(size - 1), '\0');
  WideCharToMultiByte(CP_UTF8, 0, text, -1, result.data(), size, nullptr, nullptr);
  return result;
}

std::string AddressToString(BTH_ADDR addr) {
  std::ostringstream out;
  out << std::uppercase << std::hex << std::setfill('0');
  for (int i = 5; i >= 0; --i) {
    if (i != 5) {
      out << ':';
    }
    out << std::setw(2) << ((addr >> (i * 8)) & 0xff);
  }
  return out.str();
}

bool ParseAddress(const std::string& text, BTH_ADDR* out) {
  std::string digits;
  for (char c : text) {
    if (c == ':' || c == '-' || c == ' ') {
      continue;
    }
    digits.push_back(c);
  }
  if (digits.size() != 12) {
    return false;
  }
  unsigned long long value = 0;
  std::istringstream in(digits);
  in >> std::hex >> value;
  if (in.fail()) {
    return false;
  }
  *out = static_cast<BTH_ADDR>(value);
  return true;
}

bool ParseUuid(const std::string& text, GUID* out) {
  if (out == nullptr) {
    return false;
  }
  unsigned int data1 = 0;
  unsigned int data2 = 0;
  unsigned int data3 = 0;
  unsigned int data4[8] = {};
  const int matched = sscanf_s(
      text.c_str(),
      "%8x-%4x-%4x-%2x%2x-%2x%2x%2x%2x%2x%2x",
      &data1, &data2, &data3, &data4[0], &data4[1], &data4[2], &data4[3],
      &data4[4], &data4[5], &data4[6], &data4[7]);
  if (matched != 11) {
    return false;
  }
  out->Data1 = static_cast<unsigned long>(data1);
  out->Data2 = static_cast<unsigned short>(data2);
  out->Data3 = static_cast<unsigned short>(data3);
  for (size_t i = 0; i < 8; ++i) {
    out->Data4[i] = static_cast<unsigned char>(data4[i]);
  }
  return true;
}

int DiscoverRfcommChannel(BTH_ADDR address, const GUID& service_uuid,
                          int* error_out);
int DiscoverRfcommChannelWinRt(BTH_ADDR address, const GUID& service_uuid,
                               int* error_out);

DWORD AuthenticateClassicDevice(BTH_ADDR address) {
  BLUETOOTH_DEVICE_INFO device = {};
  device.dwSize = sizeof(device);
  device.Address.ullLong = address;
  const DWORD status = BluetoothAuthenticateDeviceEx(
      nullptr, nullptr, &device, nullptr, MITMProtectionNotRequired);
  // ERROR_NO_MORE_ITEMS means Windows already considers this device
  // authenticated, so the RFCOMM service connection may proceed.
  return status == ERROR_NO_MORE_ITEMS ? ERROR_SUCCESS : status;
}

int DiscoverRfcommChannel(BTH_ADDR address, const GUID& service_uuid,
                          int* error_out) {
  if (error_out != nullptr) {
    *error_out = 0;
  }

  SOCKADDR_BTH context_address = {};
  context_address.addressFamily = AF_BTH;
  context_address.btAddr = address;
  wchar_t context[64] = {};
  DWORD context_length = 64;
  if (WSAAddressToStringW(
          reinterpret_cast<LPSOCKADDR>(&context_address),
          sizeof(context_address), nullptr, context, &context_length) ==
      SOCKET_ERROR) {
    if (error_out != nullptr) {
      *error_out = WSAGetLastError();
    }
    return -1;
  }

  WSAQUERYSETW query = {};
  query.dwSize = sizeof(query);
  query.lpServiceClassId = const_cast<GUID*>(&service_uuid);
  query.dwNameSpace = NS_BTH;
  query.lpszContext = context;

  HANDLE lookup = nullptr;
  const DWORD flags = LUP_FLUSHCACHE | LUP_RETURN_ADDR;
  if (WSALookupServiceBeginW(&query, flags, &lookup) == SOCKET_ERROR) {
    if (error_out != nullptr) {
      *error_out = WSAGetLastError();
    }
    return -1;
  }

  int channel = -1;
  std::vector<uint8_t> buffer(4096);
  while (channel < 0) {
    DWORD buffer_length = static_cast<DWORD>(buffer.size());
    auto* result = reinterpret_cast<WSAQUERYSETW*>(buffer.data());
    ZeroMemory(result, buffer_length);
    result->dwSize = sizeof(WSAQUERYSETW);
    if (WSALookupServiceNextW(lookup, LUP_RETURN_ADDR, &buffer_length, result) ==
        SOCKET_ERROR) {
      const int error = WSAGetLastError();
      if (error == WSAEFAULT && buffer_length > buffer.size()) {
        buffer.resize(buffer_length);
        continue;
      }
      if (error_out != nullptr && error != WSA_E_NO_MORE) {
        *error_out = error;
      }
      break;
    }

    for (DWORD i = 0; i < result->dwNumberOfCsAddrs; ++i) {
      const auto& address_info = result->lpcsaBuffer[i];
      const SOCKET_ADDRESS candidates[] = {
          address_info.RemoteAddr,
          address_info.LocalAddr,
      };
      for (const auto& candidate : candidates) {
        if (candidate.lpSockaddr == nullptr ||
            candidate.iSockaddrLength < sizeof(SOCKADDR_BTH) ||
            candidate.lpSockaddr->sa_family != AF_BTH) {
          continue;
        }
        const auto* rfcomm =
            reinterpret_cast<const SOCKADDR_BTH*>(candidate.lpSockaddr);
        if (rfcomm->port >= 1 && rfcomm->port <= 30) {
          channel = static_cast<int>(rfcomm->port);
          break;
        }
      }
      if (channel >= 0) {
        break;
      }
    }
  }
  WSALookupServiceEnd(lookup);
  return channel;
}

int DiscoverRfcommChannelWinRt(BTH_ADDR address, const GUID& service_uuid,
                               int* error_out) {
  if (error_out != nullptr) {
    *error_out = 0;
  }
  try {
    winrt::init_apartment(winrt::apartment_type::multi_threaded);
    const auto device =
        winrt::Windows::Devices::Bluetooth::BluetoothDevice::
            FromBluetoothAddressAsync(address)
                .get();
    if (device == nullptr) {
      return -1;
    }
    const auto service_id =
        winrt::Windows::Devices::Bluetooth::Rfcomm::RfcommServiceId::
            FromUuid(service_uuid);
    const auto channel_from_services = [](const auto& services) {
      for (const auto& service : services) {
        const std::wstring service_name =
            service.ConnectionServiceName().c_str();
        try {
          const int channel = std::stoi(service_name);
          if (channel >= 1 && channel <= 30) {
            return channel;
          }
        } catch (...) {
          // A non-numeric service name is not a connectable RFCOMM channel.
        }
      }
      return -1;
    };

    const auto cache_modes = {
        winrt::Windows::Devices::Bluetooth::BluetoothCacheMode::Cached,
        winrt::Windows::Devices::Bluetooth::BluetoothCacheMode::Uncached,
    };
    for (const auto cache_mode : cache_modes) {
      const auto query =
          device.GetRfcommServicesForIdAsync(service_id, cache_mode).get();
      if (query.Error() ==
          winrt::Windows::Devices::Bluetooth::BluetoothError::Success) {
        const int channel = channel_from_services(query.Services());
        if (channel >= 0) {
          return channel;
        }
      } else if (error_out != nullptr) {
        *error_out = static_cast<int>(query.Error());
      }
    }

    // Some Windows Bluetooth stacks return an empty result for a targeted
    // custom 128-bit UUID query, while exposing the same record when all
    // RFCOMM services are enumerated. Enumerate uncached records but accept
    // only the exact Zepp OS UUID; never infer or probe a channel.
    for (const auto cache_mode : cache_modes) {
      const auto all_services =
          device.GetRfcommServicesAsync(cache_mode).get();
      if (all_services.Error() !=
          winrt::Windows::Devices::Bluetooth::BluetoothError::Success) {
        if (error_out != nullptr) {
          *error_out = static_cast<int>(all_services.Error());
        }
        continue;
      }
      for (const auto& service : all_services.Services()) {
        const auto discovered_uuid = service.ServiceId().Uuid();
        if (!InlineIsEqualGUID(discovered_uuid, service_uuid)) {
          continue;
        }
        const std::wstring service_name =
            service.ConnectionServiceName().c_str();
        try {
          const int channel = std::stoi(service_name);
          if (channel >= 1 && channel <= 30) {
            return channel;
          }
        } catch (...) {
          // A non-numeric service name is not a connectable RFCOMM channel.
        }
      }
    }
  } catch (const winrt::hresult_error& error) {
    if (error_out != nullptr) {
      *error_out = static_cast<int>(error.code().value);
    }
  }
  return -1;
}

std::string ArgString(const EncodableMap& args, const char* key) {
  auto it = args.find(EncodableValue(key));
  if (it == args.end() || !std::holds_alternative<std::string>(it->second)) {
    return "";
  }
  return std::get<std::string>(it->second);
}

EncodableMap DeviceToMap(const BLUETOOTH_DEVICE_INFO& info) {
  return EncodableMap{
      {EncodableValue("addr"), EncodableValue(AddressToString(info.Address.ullLong))},
      {EncodableValue("name"), EncodableValue(WideToUtf8(info.szName))},
      {EncodableValue("connectType"), EncodableValue("spp")},
  };
}

int ArgInt(const EncodableMap& args, const char* key, int fallback) {
  auto it = args.find(EncodableValue(key));
  if (it == args.end()) {
    return fallback;
  }
  if (std::holds_alternative<int>(it->second)) {
    return std::get<int>(it->second);
  }
  if (std::holds_alternative<int64_t>(it->second)) {
    return static_cast<int>(std::get<int64_t>(it->second));
  }
  return fallback;
}

bool ArgBool(const EncodableMap& args, const char* key, bool fallback) {
  auto it = args.find(EncodableValue(key));
  if (it == args.end() || !std::holds_alternative<bool>(it->second)) {
    return fallback;
  }
  return std::get<bool>(it->second);
}

EncodableList BluetoothDevices(bool issue_inquiry = false,
                               int timeout_ms = 15000,
                               uint64_t scan_generation = 0) {
  EncodableList devices;
  BLUETOOTH_DEVICE_SEARCH_PARAMS params = {};
  params.dwSize = sizeof(params);
  params.fReturnAuthenticated = TRUE;
  params.fReturnRemembered = TRUE;
  params.fReturnUnknown = issue_inquiry ? TRUE : FALSE;
  params.fReturnConnected = TRUE;
  params.fIssueInquiry = issue_inquiry ? TRUE : FALSE;
  params.cTimeoutMultiplier = static_cast<UCHAR>(
      std::clamp((timeout_ms + 1279) / 1280, 1, 48));

  BLUETOOTH_DEVICE_INFO info = {};
  info.dwSize = sizeof(info);
  HBLUETOOTH_DEVICE_FIND handle = BluetoothFindFirstDevice(&params, &info);
  if (handle == nullptr) {
    return devices;
  }
  do {
    if (scan_generation != 0 && scan_generation != g_scan_generation.load()) {
      break;
    }
    auto item = DeviceToMap(info);
    devices.emplace_back(item);
    std::lock_guard<std::mutex> lock(g_event_sink_mutex);
    if (g_scan_event_sink) {
      g_scan_event_sink->Success(EncodableValue(item));
    }
    info = {};
    info.dwSize = sizeof(info);
  } while (BluetoothFindNextDevice(handle, &info));
  BluetoothFindDeviceClose(handle);
  return devices;
}

EncodableList PairedDevices() {
  return BluetoothDevices(false);
}

void SendDisconnectedEvent() {
  std::lock_guard<std::mutex> lock(g_event_sink_mutex);
  if (g_event_sink) {
    g_event_sink->Success(EncodableValue(EncodableMap{
        {EncodableValue("event"), EncodableValue("disconnected")},
    }));
  }
}

void CloseSocket() {
  SOCKET socket = INVALID_SOCKET;
  SOCKET connect_socket = INVALID_SOCKET;
  {
    std::lock_guard<std::mutex> lock(g_socket_mutex);
    socket = g_socket;
    g_socket = INVALID_SOCKET;
    connect_socket = g_connect_socket;
    g_connect_socket = INVALID_SOCKET;
  }
  if (connect_socket != INVALID_SOCKET) {
    shutdown(connect_socket, SD_BOTH);
    closesocket(connect_socket);
  }
  if (socket != INVALID_SOCKET) {
    shutdown(socket, SD_BOTH);
    closesocket(socket);
  }
}

void CloseConnectSocketIfOwned(SOCKET socket) {
  bool should_close = false;
  {
    std::lock_guard<std::mutex> lock(g_socket_mutex);
    if (g_connect_socket == socket) {
      g_connect_socket = INVALID_SOCKET;
      should_close = true;
    }
  }
  if (should_close) {
    closesocket(socket);
  }
}

void StopReadThread() {
  g_read_running = false;
  g_emit_disconnect_on_read_close = false;
  CloseSocket();
  if (g_read_thread.joinable()) {
    g_read_thread.join();
  }
  g_emit_disconnect_on_read_close = true;
}

void StartReadThread() {
  g_read_running = true;
  g_emit_disconnect_on_read_close = true;
  g_read_thread = std::thread([] {
    std::vector<uint8_t> buffer(4096);
    while (g_read_running) {
      SOCKET socket = INVALID_SOCKET;
      {
        std::lock_guard<std::mutex> lock(g_socket_mutex);
        socket = g_socket;
      }
      if (socket == INVALID_SOCKET) {
        break;
      }
      const int read = recv(socket, reinterpret_cast<char*>(buffer.data()),
                            static_cast<int>(buffer.size()), 0);
      if (read <= 0) {
        break;
      }
      std::lock_guard<std::mutex> lock(g_event_sink_mutex);
      if (g_event_sink) {
        std::vector<uint8_t> packet(buffer.begin(), buffer.begin() + read);
        g_event_sink->Success(EncodableValue(packet));
      }
    }
    g_read_running = false;
    CloseSocket();
    if (g_emit_disconnect_on_read_close) {
      SendDisconnectedEvent();
    }
  });
}

SOCKET ConnectRfcomm(BTH_ADDR address, int channel, const GUID* service_uuid,
                     uint64_t generation, int timeout_ms,
                     int* error_out = nullptr) {
  if (error_out != nullptr) {
    *error_out = 0;
  }
  SOCKET socket = ::socket(AF_BTH, SOCK_STREAM, BTHPROTO_RFCOMM);
  if (socket == INVALID_SOCKET) {
    if (error_out != nullptr) {
      *error_out = WSAGetLastError();
    }
    return INVALID_SOCKET;
  }
  {
    std::lock_guard<std::mutex> lock(g_socket_mutex);
    if (generation != g_connect_generation.load()) {
      g_connect_socket = INVALID_SOCKET;
      closesocket(socket);
      return INVALID_SOCKET;
    }
    g_connect_socket = socket;
  }

  SOCKADDR_BTH remote = {};
  remote.addressFamily = AF_BTH;
  remote.btAddr = address;
  if (service_uuid != nullptr) {
    remote.serviceClassId = *service_uuid;
    // For a client connect using serviceClassId, Windows requires port zero
    // so Winsock performs SDP resolution. BT_PORT_ANY is only for server bind.
    remote.port = 0;
    BOOL authenticate = TRUE;
    if (setsockopt(socket, SOL_RFCOMM, SO_BTH_AUTHENTICATE,
                   reinterpret_cast<const char*>(&authenticate),
                   sizeof(authenticate)) == SOCKET_ERROR) {
      if (error_out != nullptr) {
        *error_out = WSAGetLastError();
      }
      CloseConnectSocketIfOwned(socket);
      return INVALID_SOCKET;
    }
  } else {
    remote.port = static_cast<ULONG>(channel);
  }

  u_long non_blocking = 1;
  ioctlsocket(socket, FIONBIO, &non_blocking);

  int rc = connect(socket, reinterpret_cast<sockaddr*>(&remote), sizeof(remote));
  if (rc == SOCKET_ERROR) {
    const int error = WSAGetLastError();
    if (error != WSAEWOULDBLOCK && error != WSAEINPROGRESS &&
        error != WSAEINVAL) {
      if (error_out != nullptr) {
        *error_out = error;
      }
      CloseConnectSocketIfOwned(socket);
      return INVALID_SOCKET;
    }

    const auto deadline =
        std::chrono::steady_clock::now() + std::chrono::milliseconds(timeout_ms);
    while (true) {
      if (generation != g_connect_generation.load()) {
        CloseConnectSocketIfOwned(socket);
        return INVALID_SOCKET;
      }
      const auto now = std::chrono::steady_clock::now();
      if (now >= deadline) {
        if (error_out != nullptr) {
          *error_out = WSAETIMEDOUT;
        }
        CloseConnectSocketIfOwned(socket);
        return INVALID_SOCKET;
      }

      const auto wait = std::min(
          std::chrono::milliseconds(250),
          std::chrono::duration_cast<std::chrono::milliseconds>(deadline - now));
      fd_set write_fds;
      FD_ZERO(&write_fds);
      FD_SET(socket, &write_fds);
      timeval tv = {};
      tv.tv_sec = static_cast<long>(wait.count() / 1000);
      tv.tv_usec = static_cast<long>((wait.count() % 1000) * 1000);
      rc = select(0, nullptr, &write_fds, nullptr, &tv);
      if (rc == SOCKET_ERROR) {
        if (error_out != nullptr) {
          *error_out = WSAGetLastError();
        }
        CloseConnectSocketIfOwned(socket);
        return INVALID_SOCKET;
      }
      if (rc == 0) {
        continue;
      }

      int socket_error = 0;
      int len = sizeof(socket_error);
      if (getsockopt(socket, SOL_SOCKET, SO_ERROR,
                     reinterpret_cast<char*>(&socket_error), &len) ==
          SOCKET_ERROR) {
        if (error_out != nullptr) {
          *error_out = WSAGetLastError();
        }
        CloseConnectSocketIfOwned(socket);
        return INVALID_SOCKET;
      }
      if (socket_error != 0) {
        if (error_out != nullptr) {
          *error_out = socket_error;
        }
        CloseConnectSocketIfOwned(socket);
        return INVALID_SOCKET;
      }
      break;
    }
  }

  non_blocking = 0;
  ioctlsocket(socket, FIONBIO, &non_blocking);
  {
    std::lock_guard<std::mutex> lock(g_socket_mutex);
    if (g_connect_socket == socket) {
      g_connect_socket = INVALID_SOCKET;
    }
    if (generation != g_connect_generation.load()) {
      closesocket(socket);
      return INVALID_SOCKET;
    }
  }
  return socket;
}

uint16_t BtbrCrc16(const uint8_t* data, size_t length) {
  uint16_t crc = 0xffff;
  for (size_t i = 0; i < length; ++i) {
    crc = static_cast<uint16_t>((crc >> 8) | (crc << 8));
    crc ^= data[i];
    crc ^= static_cast<uint16_t>((crc & 0xff) >> 4);
    crc ^= static_cast<uint16_t>(crc << 12);
    crc ^= static_cast<uint16_t>((crc & 0xff) << 5);
  }
  return crc;
}

bool ValidateZeppBtbrChannel(SOCKET socket, uint64_t generation,
                             int timeout_ms) {
  // CMD_CHANNELS_GET with an otherwise unused sequence number. The Dart BTBR
  // transport performs a fresh channel request after this probe succeeds.
  uint8_t request[] = {0x55, 0x01, 0xfe, 0x00, 0x00, 0x00, 0x00, 0xaa};
  const uint16_t request_crc = BtbrCrc16(request + 1, 4);
  request[5] = static_cast<uint8_t>(request_crc & 0xff);
  request[6] = static_cast<uint8_t>((request_crc >> 8) & 0xff);
  if (send(socket, reinterpret_cast<const char*>(request), sizeof(request), 0) !=
      sizeof(request)) {
    return false;
  }

  std::vector<uint8_t> received;
  received.reserve(4096);
  const auto deadline =
      std::chrono::steady_clock::now() + std::chrono::milliseconds(timeout_ms);
  while (std::chrono::steady_clock::now() < deadline) {
    if (generation != g_connect_generation.load()) {
      return false;
    }
    const auto remaining = std::chrono::duration_cast<std::chrono::milliseconds>(
        deadline - std::chrono::steady_clock::now());
    fd_set read_fds;
    FD_ZERO(&read_fds);
    FD_SET(socket, &read_fds);
    timeval wait = {};
    const auto wait_ms = std::min<int64_t>(remaining.count(), 200);
    wait.tv_sec = static_cast<long>(wait_ms / 1000);
    wait.tv_usec = static_cast<long>((wait_ms % 1000) * 1000);
    const int ready = select(0, &read_fds, nullptr, nullptr, &wait);
    if (ready == SOCKET_ERROR) {
      return false;
    }
    if (ready == 0) {
      continue;
    }

    uint8_t chunk[4096];
    const int count =
        recv(socket, reinterpret_cast<char*>(chunk), sizeof(chunk), 0);
    if (count <= 0) {
      return false;
    }
    received.insert(received.end(), chunk, chunk + count);

    size_t offset = 0;
    while (received.size() - offset >= 8) {
      if (received[offset] != 0x55) {
        ++offset;
        continue;
      }
      const size_t payload_length =
          received[offset + 3] | (received[offset + 4] << 8);
      const size_t frame_length = payload_length + 8;
      if (received.size() - offset < frame_length) {
        break;
      }
      if (received[offset + frame_length - 1] == 0xaa) {
        const uint16_t expected_crc =
            received[offset + 5 + payload_length] |
            (received[offset + 6 + payload_length] << 8);
        const uint16_t actual_crc =
            BtbrCrc16(received.data() + offset + 1, payload_length + 4);
        if (received[offset + 1] == 0x02 && expected_crc == actual_crc) {
          return true;
        }
      }
      offset += frame_length;
    }
    if (offset > 0) {
      received.erase(received.begin(), received.begin() + offset);
    }
  }
  return false;
}

SOCKET ProbeZeppBtbrChannels(BTH_ADDR address, uint64_t generation,
                             int* connected_channel) {
  // Try common RFCOMM assignments first, then exhaust the valid range. A
  // socket is accepted only after a valid Zepp BTBR channel-table response.
  std::vector<int> channels = {1, 5};
  for (int channel = 2; channel <= 30; ++channel) {
    if (channel != 5) {
      channels.push_back(channel);
    }
  }
  for (const int channel : channels) {
    if (generation != g_connect_generation.load()) {
      break;
    }
    SOCKET candidate =
        ConnectRfcomm(address, channel, nullptr, generation, 900);
    if (candidate == INVALID_SOCKET) {
      continue;
    }
    if (ValidateZeppBtbrChannel(candidate, generation, 1500)) {
      *connected_channel = channel;
      return candidate;
    }
    shutdown(candidate, SD_BOTH);
    closesocket(candidate);
  }
  return INVALID_SOCKET;
}

std::vector<int> FallbackChannels(const EncodableMap& args) {
  auto it = args.find(EncodableValue("fallbackChannels"));
  if (it == args.end() || !std::holds_alternative<EncodableList>(it->second)) {
    return {5, 1};
  }
  std::vector<int> channels;
  for (const auto& item : std::get<EncodableList>(it->second)) {
    if (!std::holds_alternative<int>(item)) {
      continue;
    }
    int channel = std::get<int>(item);
    if (channel >= 1 && channel <= 30 &&
        std::find(channels.begin(), channels.end(), channel) == channels.end()) {
      channels.push_back(channel);
    }
  }
  return channels;
}

void HandleMethodCall(
    const flutter::MethodCall<EncodableValue>& call,
    std::unique_ptr<flutter::MethodResult<EncodableValue>> result) {
  if (call.method_name() == "requestPermissions") {
    result->Success();
    return;
  }
  if (call.method_name() == "startScan") {
    int timeout_ms = 15000;
    if (call.arguments() && std::holds_alternative<EncodableMap>(*call.arguments())) {
      const auto& args = std::get<EncodableMap>(*call.arguments());
      timeout_ms = ArgInt(args, "timeoutMs", timeout_ms);
    }
    timeout_ms = std::clamp(timeout_ms, 1280, 60000);
    const uint64_t scan_generation = g_scan_generation.fetch_add(1) + 1;
    result->Success();
    std::thread([scan_generation, timeout_ms] {
      BluetoothDevices(true, timeout_ms, scan_generation);
    }).detach();
    return;
  }
  if (call.method_name() == "stopScan") {
    g_scan_generation.fetch_add(1);
    result->Success(EncodableValue(PairedDevices()));
    return;
  }
  if (call.method_name() == "disconnect") {
    g_connect_generation.fetch_add(1);
    StopReadThread();
    result->Success();
    return;
  }
  if (!call.arguments() || !std::holds_alternative<EncodableMap>(*call.arguments())) {
    result->Error("INVALID_ARGUMENT", "arguments are required");
    return;
  }
  const auto& args = std::get<EncodableMap>(*call.arguments());

  if (call.method_name() == "connect") {
    auto addr_it = args.find(EncodableValue("addr"));
    if (addr_it == args.end() || !std::holds_alternative<std::string>(addr_it->second)) {
      result->Error("INVALID_ARGUMENT", "addr is required");
      return;
    }
    BTH_ADDR address = 0;
    if (!ParseAddress(std::get<std::string>(addr_it->second), &address)) {
      result->Error("INVALID_ARGUMENT", "addr is invalid");
      return;
    }
    GUID service_uuid = {};
    const std::string service_uuid_text = ArgString(args, "serviceUuid");
    const bool has_service_uuid =
        !service_uuid_text.empty() && ParseUuid(service_uuid_text, &service_uuid);
    const bool is_zepp_btbr =
        service_uuid_text == kZeppBtbrServiceUuid;
    if (!service_uuid_text.empty() && !has_service_uuid) {
      result->Error("INVALID_ARGUMENT", "serviceUuid is invalid");
      return;
    }
    const auto channels = FallbackChannels(args);
    const bool remove_bond = ArgBool(args, "removeBond", false);
    const uint64_t generation = g_connect_generation.fetch_add(1) + 1;
    StopReadThread();
    std::thread([address, channels, generation, has_service_uuid, is_zepp_btbr,
                 service_uuid, remove_bond,
                 result = std::move(result)]() mutable {
      SOCKET connected = INVALID_SOCKET;
      int connected_channel = -1;
      int connect_error = 0;
      DWORD authentication_error = ERROR_SUCCESS;
      // 记录「系统里到底有没有配对记录」：有就删掉再连。这个结果要报给上层 ——
      // 手环出现「请在手机上确认连接」时，它是判断「是不是旧配对记录惹的祸」
      // 的关键依据。
      bool bond_existed = false;
      const auto started_at = std::chrono::steady_clock::now();
      auto discovery_finished_at = started_at;
      if (remove_bond) {
        BLUETOOTH_ADDRESS bluetooth_address = {};
        bluetooth_address.ullLong = address;
        const DWORD remove_status = BluetoothRemoveDevice(&bluetooth_address);
        if (remove_status == ERROR_SUCCESS) {
          bond_existed = true;
        } else if (remove_status != ERROR_NOT_FOUND) {
          result->Error(
              "UNPAIR_FAILED",
              "Windows BluetoothRemoveDevice failed (Win32 error " +
                  std::to_string(remove_status) + ")");
          return;
        }
      }
      if (has_service_uuid) {
        if (is_zepp_btbr) {
          authentication_error = AuthenticateClassicDevice(address);
          if (authentication_error != ERROR_SUCCESS) {
            result->Error(
                "PAIRING_FAILED",
                "Windows Classic authentication failed (Win32 error " +
                    std::to_string(authentication_error) + ")");
            return;
          }
        }
        // Match Gadgetbridge's BTBR connection sequence exactly:
        // getRemoteDevice(address) -> createRfcommSocketToServiceRecord(UUID)
        // -> socket.connect(). On Windows, serviceClassId + port zero is the
        // WinSock equivalent and lets the OS perform service resolution and
        // any required pairing as part of the actual RFCOMM connection.
        connected = ConnectRfcomm(
            address, 0, &service_uuid, generation, 10000, &connect_error);
        discovery_finished_at = std::chrono::steady_clock::now();
        connected_channel = connected == INVALID_SOCKET ? -1 : 0;
      }
      for (int channel : channels) {
        // Zepp BTBR must use the channel published for the official service.
        // Do not turn a failed precise lookup into a blind RFCOMM probe.
        if (is_zepp_btbr) {
          break;
        }
        if (connected != INVALID_SOCKET) {
          break;
        }
        if (generation != g_connect_generation.load()) {
          break;
        }
        connected =
            ConnectRfcomm(address, channel, nullptr, generation, 10000);
        if (connected != INVALID_SOCKET) {
          connected_channel = channel;
          break;
        }
      }
      if (connected == INVALID_SOCKET ||
          generation != g_connect_generation.load()) {
        if (connected != INVALID_SOCKET) {
          closesocket(connected);
        }
        std::string failure_message = "No RFCOMM channel available";
        if (has_service_uuid) {
          failure_message =
              "Direct RFCOMM service connection failed for the official "
              "BTBR UUID (WSA error " + std::to_string(connect_error) + ")";
        }
        result->Error(
            generation == g_connect_generation.load() ? "CONNECT_FAILED"
                                                      : "CONNECT_CANCELLED",
            generation == g_connect_generation.load()
                ? failure_message
                : "SPP connect was cancelled");
        return;
      }
      {
        std::lock_guard<std::mutex> lock(g_socket_mutex);
        g_socket = connected;
      }
      const int send_timeout_ms = 5000;
      setsockopt(connected, SOL_SOCKET, SO_SNDTIMEO,
                 reinterpret_cast<const char*>(&send_timeout_ms),
                 sizeof(send_timeout_ms));
      StartReadThread();
      const auto connected_at = std::chrono::steady_clock::now();
      result->Success(EncodableValue(EncodableMap{
          {EncodableValue("channel"), EncodableValue(connected_channel)},
          {EncodableValue("connectionMode"),
           EncodableValue(has_service_uuid ? "serviceUuid" : "channel")},
          {EncodableValue("bondExisted"), EncodableValue(bond_existed)},
          {EncodableValue("discoveryMs"),
           EncodableValue(static_cast<int64_t>(
               std::chrono::duration_cast<std::chrono::milliseconds>(
                   discovery_finished_at - started_at)
                   .count()))},
          {EncodableValue("connectMs"),
           EncodableValue(static_cast<int64_t>(
               std::chrono::duration_cast<std::chrono::milliseconds>(
                   connected_at - discovery_finished_at)
                   .count()))},
      }));
    }).detach();
    return;
  }

  if (call.method_name() == "send") {
    auto data_it = args.find(EncodableValue("data"));
    if (data_it == args.end() || !std::holds_alternative<std::vector<uint8_t>>(data_it->second)) {
      result->Error("INVALID_ARGUMENT", "data is required");
      return;
    }
    SOCKET socket = INVALID_SOCKET;
    {
      std::lock_guard<std::mutex> lock(g_socket_mutex);
      socket = g_socket;
    }
    if (socket == INVALID_SOCKET) {
      result->Error("NOT_CONNECTED", "SPP socket is not connected");
      return;
    }
    const auto data = std::get<std::vector<uint8_t>>(data_it->second);
    const uint64_t generation = g_connect_generation.load();
    std::thread([socket, data = std::move(data), generation,
                 result = std::move(result)]() mutable {
      int offset = 0;
      while (offset < static_cast<int>(data.size())) {
        if (generation != g_connect_generation.load()) {
          result->Error("SEND_CANCELLED", "RFCOMM connection changed");
          return;
        }
        const int sent = send(
            socket, reinterpret_cast<const char*>(data.data()) + offset,
            static_cast<int>(data.size()) - offset, 0);
        if (sent <= 0) {
          result->Error("SEND_FAILED", "RFCOMM send failed");
          return;
        }
        offset += sent;
      }
      result->Success();
    }).detach();
    return;
  }

  result->NotImplemented();
}

}  // namespace

void RegisterRfcommChannel(flutter::BinaryMessenger* messenger) {
  WSADATA data;
  WSAStartup(MAKEWORD(2, 2), &data);

  auto method_channel = std::make_unique<flutter::MethodChannel<EncodableValue>>(
      messenger, "bandschedule/classic_spp",
      &flutter::StandardMethodCodec::GetInstance());
  method_channel->SetMethodCallHandler(HandleMethodCall);
  method_channel.release();

  auto event_channel = std::make_unique<flutter::EventChannel<EncodableValue>>(
      messenger, "bandschedule/classic_spp/events",
      &flutter::StandardMethodCodec::GetInstance());
  event_channel->SetStreamHandler(
      std::make_unique<flutter::StreamHandlerFunctions<EncodableValue>>(
          [](const EncodableValue*,
             std::unique_ptr<flutter::EventSink<EncodableValue>>&& events)
              -> std::unique_ptr<flutter::StreamHandlerError<EncodableValue>> {
            std::lock_guard<std::mutex> lock(g_event_sink_mutex);
            g_event_sink = std::move(events);
            return nullptr;
          },
          [](const EncodableValue*)
              -> std::unique_ptr<flutter::StreamHandlerError<EncodableValue>> {
            std::lock_guard<std::mutex> lock(g_event_sink_mutex);
            g_event_sink.reset();
            return nullptr;
          }));
  event_channel.release();

  auto scan_channel = std::make_unique<flutter::EventChannel<EncodableValue>>(
      messenger, "bandschedule/classic_spp/scan_events",
      &flutter::StandardMethodCodec::GetInstance());
  scan_channel->SetStreamHandler(
      std::make_unique<flutter::StreamHandlerFunctions<EncodableValue>>(
          [](const EncodableValue*,
             std::unique_ptr<flutter::EventSink<EncodableValue>>&& events)
              -> std::unique_ptr<flutter::StreamHandlerError<EncodableValue>> {
            std::lock_guard<std::mutex> lock(g_event_sink_mutex);
            g_scan_event_sink = std::move(events);
            return nullptr;
          },
          [](const EncodableValue*)
              -> std::unique_ptr<flutter::StreamHandlerError<EncodableValue>> {
            std::lock_guard<std::mutex> lock(g_event_sink_mutex);
            g_scan_event_sink.reset();
            return nullptr;
          }));
  scan_channel.release();
}

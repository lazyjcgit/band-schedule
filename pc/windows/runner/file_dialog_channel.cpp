#include "file_dialog_channel.h"

#include <flutter/method_channel.h>
#include <flutter/standard_method_codec.h>

#include <memory>
#include <string>
#include <vector>

#include <commdlg.h>

namespace {

constexpr char kChannelName[] = "bandschedule/file_dialog";

// 每次选择最多记住多少字节；课表文件不大，给 32KB 足够
constexpr DWORD kPathBufferChars = 32768;

// UTF-8 → UTF-16。Flutter 侧传过来的是 UTF-8，Win32 的 W 系列 API 要 UTF-16。
std::wstring WideFromUtf8(const std::string& utf8) {
  if (utf8.empty()) return std::wstring();
  const int length = ::MultiByteToWideChar(CP_UTF8, 0, utf8.data(),
                                           static_cast<int>(utf8.size()),
                                           nullptr, 0);
  if (length <= 0) return std::wstring();
  std::wstring out(static_cast<size_t>(length), L'\0');
  ::MultiByteToWideChar(CP_UTF8, 0, utf8.data(),
                        static_cast<int>(utf8.size()), out.data(), length);
  return out;
}

std::string Utf8FromWide(const std::wstring& wide) {
  if (wide.empty()) return std::string();
  const int length = ::WideCharToMultiByte(CP_UTF8, 0, wide.data(),
                                           static_cast<int>(wide.size()),
                                           nullptr, 0, nullptr, nullptr);
  if (length <= 0) return std::string();
  std::string out(static_cast<size_t>(length), '\0');
  ::WideCharToMultiByte(CP_UTF8, 0, wide.data(), static_cast<int>(wide.size()),
                        out.data(), length, nullptr, nullptr);
  return out;
}

// 把 ["ics","txt"] 这样的后缀名列表拼成 Win32 需要的过滤器格式：
//   "课表文件 (*.ics)\0*.ics\0所有文件 (*.*)\0*.*\0\0"
std::wstring BuildFilter(const std::vector<std::string>& extensions,
                         const std::wstring& label) {
  std::wstring filter;
  if (!extensions.empty()) {
    std::wstring patterns;
    std::wstring display;
    for (size_t i = 0; i < extensions.size(); ++i) {
      if (i > 0) {
        patterns += L";";
        display += L", ";
      }
      patterns += L"*." + WideFromUtf8(extensions[i]);
      display += L"*." + WideFromUtf8(extensions[i]);
    }
    filter += label + L" (" + display + L")";
    filter.push_back(L'\0');
    filter += patterns;
    filter.push_back(L'\0');
  }
  filter += L"所有文件 (*.*)";
  filter.push_back(L'\0');
  filter += L"*.*";
  filter.push_back(L'\0');
  filter.push_back(L'\0');  // 双 \0 结束
  return filter;
}

// 打开系统文件选择框；用户取消返回空字符串。
std::string ShowOpenDialog(HWND owner, const std::wstring& title,
                           const std::wstring& filter, bool multi) {
  std::vector<wchar_t> buffer(kPathBufferChars, L'\0');

  OPENFILENAMEW ofn = {};
  ofn.lStructSize = sizeof(ofn);
  ofn.hwndOwner = owner;
  ofn.lpstrFilter = filter.c_str();
  ofn.lpstrFile = buffer.data();
  ofn.nMaxFile = kPathBufferChars;
  ofn.lpstrTitle = title.empty() ? nullptr : title.c_str();
  ofn.Flags = OFN_FILEMUSTEXIST | OFN_PATHMUSTEXIST | OFN_EXPLORER |
              OFN_NOCHANGEDIR | (multi ? OFN_ALLOWMULTISELECT : 0);

  if (::GetOpenFileNameW(&ofn) == FALSE) {
    return std::string();  // 用户取消或出错，都当没选
  }

  if (!multi) {
    return Utf8FromWide(std::wstring(buffer.data()));
  }

  // 多选时返回格式是：目录\0文件1\0文件2\0...\0\0
  // 这里只用得上单选，多选时返回第一个，保持接口简单。
  const wchar_t* dir = buffer.data();
  const wchar_t* first = dir + std::wcslen(dir) + 1;
  if (*first == L'\0') {
    return Utf8FromWide(std::wstring(dir));  // 只选了一个
  }
  std::wstring path(dir);
  if (!path.empty() && path.back() != L'\\') path.push_back(L'\\');
  path += first;
  return Utf8FromWide(path);
}

}  // namespace

void RegisterFileDialogChannel(flutter::BinaryMessenger* messenger,
                               HWND owner_window) {
  auto channel =
      std::make_unique<flutter::MethodChannel<flutter::EncodableValue>>(
          messenger, kChannelName,
          &flutter::StandardMethodCodec::GetInstance());

  channel->SetMethodCallHandler(
      [owner_window](const flutter::MethodCall<flutter::EncodableValue>& call,
                     std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>>
                         result) {
        if (call.method_name() != "pickFile") {
          result->NotImplemented();
          return;
        }

        std::string title;
        std::vector<std::string> extensions;
        std::wstring label = L"文件";

        const auto* args =
            std::get_if<flutter::EncodableMap>(call.arguments());
        if (args != nullptr) {
          auto it = args->find(flutter::EncodableValue("title"));
          if (it != args->end() && std::holds_alternative<std::string>(it->second)) {
            title = std::get<std::string>(it->second);
          }
          auto itLabel = args->find(flutter::EncodableValue("label"));
          if (itLabel != args->end() &&
              std::holds_alternative<std::string>(itLabel->second)) {
            label = WideFromUtf8(std::get<std::string>(itLabel->second));
          }
          auto itExt = args->find(flutter::EncodableValue("extensions"));
          if (itExt != args->end() &&
              std::holds_alternative<flutter::EncodableList>(itExt->second)) {
            for (const auto& item :
                 std::get<flutter::EncodableList>(itExt->second)) {
              if (std::holds_alternative<std::string>(item)) {
                extensions.push_back(std::get<std::string>(item));
              }
            }
          }
        }

        const std::string path = ShowOpenDialog(
            owner_window, WideFromUtf8(title),
            BuildFilter(extensions, label), /*multi=*/false);

        if (path.empty()) {
          result->Success(flutter::EncodableValue());  // null = 用户取消
        } else {
          result->Success(flutter::EncodableValue(path));
        }
      });

  // 通道要活到应用退出，所以故意泄漏一个（引擎退出时会自行清理）。
  channel.release();
}

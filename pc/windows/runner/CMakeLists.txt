cmake_minimum_required(VERSION 3.14)
project(runner LANGUAGES CXX)

# Define the application target. To change its name, change BINARY_NAME in the
# top-level CMakeLists.txt, not the value here, or `flutter run` will no longer
# work.
#
# Any new source files that you add to the application should be added here.
add_executable(${BINARY_NAME} WIN32
  # 本项目新增的原生部分：
  #   classic_spp_channel  —— 蓝牙 SPP(RFCOMM)，和手环通信的主通道（移植自 OronBox）
  #   mi_account_2fa_channel —— 小米账号二次验证的 WebView（移植自 OronBox）
  #   file_dialog_channel  —— 系统文件选择框（本项目自己写的，见 tools/port_native.py 说明）
  "classic_spp_channel.cpp"
  "mi_account_2fa_channel.cpp"
  "file_dialog_channel.cpp"
  "flutter_window.cpp"
  "main.cpp"
  "utils.cpp"
  "win32_window.cpp"
  "${FLUTTER_MANAGED_DIR}/generated_plugin_registrant.cc"
  "Runner.rc"
  "runner.exe.manifest"
)

# Apply the standard set of build settings. This can be removed for applications
# that need different build settings.
apply_standard_settings(${BINARY_NAME})

# Add preprocessor definitions for the build version.
target_compile_definitions(${BINARY_NAME} PRIVATE "FLUTTER_VERSION=\"${FLUTTER_VERSION}\"")
target_compile_definitions(${BINARY_NAME} PRIVATE "FLUTTER_VERSION_MAJOR=${FLUTTER_VERSION_MAJOR}")
target_compile_definitions(${BINARY_NAME} PRIVATE "FLUTTER_VERSION_MINOR=${FLUTTER_VERSION_MINOR}")
target_compile_definitions(${BINARY_NAME} PRIVATE "FLUTTER_VERSION_PATCH=${FLUTTER_VERSION_PATCH}")
target_compile_definitions(${BINARY_NAME} PRIVATE "FLUTTER_VERSION_BUILD=${FLUTTER_VERSION_BUILD}")

# Disable Windows macros that collide with C++ standard library functions.
target_compile_definitions(${BINARY_NAME} PRIVATE "NOMINMAX")

# Add dependency libraries and include directories. Add any application-specific
# dependencies here.
target_link_libraries(${BINARY_NAME} PRIVATE flutter flutter_wrapper_app)
target_link_libraries(${BINARY_NAME} PRIVATE
  "dwmapi.lib"
  "ws2_32.lib"      # 蓝牙 socket
  "bthprops.lib"    # 蓝牙设备枚举/配对（BluetoothGetDeviceInfo 等）
  "windowsapp.lib"  # WinRT（Windows.Devices.Bluetooth.Rfcomm）
  "comdlg32.lib"    # 文件选择框（GetOpenFileNameW）
)
target_include_directories(${BINARY_NAME} PRIVATE "${CMAKE_SOURCE_DIR}")

# ---- WebView2（小米账号二次验证的界面需要）----
#
# 找不到 SDK 时**不报错**，只是二次验证界面不可用（C++ 那边用
# BANDSCHEDULE_HAVE_WEBVIEW2 宏守卫）。这样即使没装 SDK 也能编译和跑，
# 只是登录时如果小米要求二次验证会走不通。
# 装法：powershell -File windows\scripts\install_webview2_sdk.ps1
set(WEBVIEW2_SDK_DIR "" CACHE PATH "Path to the Microsoft.Web.WebView2 NuGet package root")
if(NOT WEBVIEW2_SDK_DIR AND DEFINED ENV{WEBVIEW2_SDK_DIR})
  file(TO_CMAKE_PATH "$ENV{WEBVIEW2_SDK_DIR}" WEBVIEW2_SDK_DIR)
endif()

if(NOT WEBVIEW2_SDK_DIR AND DEFINED ENV{USERPROFILE})
  file(TO_CMAKE_PATH "$ENV{USERPROFILE}/.nuget/packages/microsoft.web.webview2" WEBVIEW2_NUGET_ROOT)
  file(GLOB WEBVIEW2_NUGET_PACKAGES LIST_DIRECTORIES true "${WEBVIEW2_NUGET_ROOT}/*")
  set(WEBVIEW2_NUGET_VERSION "0")
  foreach(WEBVIEW2_NUGET_PACKAGE IN LISTS WEBVIEW2_NUGET_PACKAGES)
    if(IS_DIRECTORY "${WEBVIEW2_NUGET_PACKAGE}")
      get_filename_component(WEBVIEW2_NUGET_PACKAGE_VERSION "${WEBVIEW2_NUGET_PACKAGE}" NAME)
      if(WEBVIEW2_NUGET_PACKAGE_VERSION VERSION_GREATER WEBVIEW2_NUGET_VERSION)
        set(WEBVIEW2_NUGET_VERSION "${WEBVIEW2_NUGET_PACKAGE_VERSION}")
        set(WEBVIEW2_SDK_DIR "${WEBVIEW2_NUGET_PACKAGE}")
      endif()
    endif()
  endforeach()
endif()

if(NOT WEBVIEW2_SDK_DIR)
  file(GLOB WEBVIEW2_LOCAL_PACKAGES LIST_DIRECTORIES true
    "${CMAKE_SOURCE_DIR}/packages/Microsoft.Web.WebView2*"
    "${CMAKE_SOURCE_DIR}/packages/microsoft.web.webview2*"
  )
  set(WEBVIEW2_LOCAL_VERSION "0")
  foreach(WEBVIEW2_LOCAL_PACKAGE IN LISTS WEBVIEW2_LOCAL_PACKAGES)
    if(IS_DIRECTORY "${WEBVIEW2_LOCAL_PACKAGE}")
      get_filename_component(WEBVIEW2_LOCAL_NAME "${WEBVIEW2_LOCAL_PACKAGE}" NAME)
      string(REGEX REPLACE "^[Mm]icrosoft\\.[Ww]eb\\.[Ww]eb[Vv]iew2\\." "" WEBVIEW2_LOCAL_PACKAGE_VERSION "${WEBVIEW2_LOCAL_NAME}")
      if(WEBVIEW2_LOCAL_PACKAGE_VERSION VERSION_GREATER WEBVIEW2_LOCAL_VERSION)
        set(WEBVIEW2_LOCAL_VERSION "${WEBVIEW2_LOCAL_PACKAGE_VERSION}")
        set(WEBVIEW2_SDK_DIR "${WEBVIEW2_LOCAL_PACKAGE}")
      endif()
    endif()
  endforeach()
endif()

if(WEBVIEW2_SDK_DIR AND EXISTS "${WEBVIEW2_SDK_DIR}/build/native/include/WebView2.h")
  target_include_directories(${BINARY_NAME} PRIVATE "${WEBVIEW2_SDK_DIR}/build/native/include")
  if(CMAKE_SIZEOF_VOID_P EQUAL 8)
    set(WEBVIEW2_ARCH "x64")
  else()
    set(WEBVIEW2_ARCH "x86")
  endif()
  set(WEBVIEW2_STATIC_LOADER "${WEBVIEW2_SDK_DIR}/build/native/${WEBVIEW2_ARCH}/WebView2LoaderStatic.lib")
  set(WEBVIEW2_IMPORT_LOADER "${WEBVIEW2_SDK_DIR}/build/native/${WEBVIEW2_ARCH}/WebView2Loader.dll.lib")
  set(WEBVIEW2_LOADER_DLL "${WEBVIEW2_SDK_DIR}/build/native/${WEBVIEW2_ARCH}/WebView2Loader.dll")
  if(EXISTS "${WEBVIEW2_STATIC_LOADER}")
    target_compile_definitions(${BINARY_NAME} PRIVATE "BANDSCHEDULE_HAVE_WEBVIEW2")
    target_link_libraries(${BINARY_NAME} PRIVATE "${WEBVIEW2_STATIC_LOADER}" "ole32.lib")
  elseif(EXISTS "${WEBVIEW2_IMPORT_LOADER}")
    target_compile_definitions(${BINARY_NAME} PRIVATE "BANDSCHEDULE_HAVE_WEBVIEW2")
    target_link_libraries(${BINARY_NAME} PRIVATE "${WEBVIEW2_IMPORT_LOADER}" "ole32.lib")
    if(EXISTS "${WEBVIEW2_LOADER_DLL}")
      add_custom_command(TARGET ${BINARY_NAME} POST_BUILD
        COMMAND ${CMAKE_COMMAND} -E copy_if_different
          "${WEBVIEW2_LOADER_DLL}"
          "$<TARGET_FILE_DIR:${BINARY_NAME}>/WebView2Loader.dll")
    endif()
  else()
    message(WARNING "WebView2 SDK found, but no loader library for ${WEBVIEW2_ARCH}. Xiaomi 2FA will be unavailable.")
  endif()
else()
  message(WARNING "Microsoft.Web.WebView2 SDK not found. Run windows\\scripts\\install_webview2_sdk.ps1 to enable the Xiaomi 2FA WebView.")
endif()

# Run the Flutter tool portions of the build. This must not be removed.
add_dependencies(${BINARY_NAME} flutter_assemble)

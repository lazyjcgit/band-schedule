#pragma once

#include <flutter/binary_messenger.h>
#include <windows.h>

// 注册「选择文件」通道（bandschedule/file_dialog）。
//
// 为什么自己写而不是用 file_picker 之类的 Flutter 插件：
// Flutter 在 Windows 上构建插件需要符号链接支持，也就是要求用户开启系统
// 「开发者模式」。为一个文件选择框去改用户的系统设置不值得，
// 这里直接调 Win32 的 GetOpenFileNameW，几十行就够了。
//
// 本文件是本项目自己写的（OronBox 的 file_open_channel 是另一回事：
// 它处理的是"用本程序打开某个文件"的系统关联，不是选择框）。
void RegisterFileDialogChannel(flutter::BinaryMessenger* messenger,
                               HWND owner_window);

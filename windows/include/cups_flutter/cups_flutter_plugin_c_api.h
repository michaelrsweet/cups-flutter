//
// CUPS Windows plugin for Flutter.
//
// Copyright © 2025 by Micharl R Sweet.
//
// Licensed under Apache License v2.0.  See the file "LICENSE" for more
// information.
//

#ifndef FLUTTER_PLUGIN_CUPS_FLUTTER_PLUGIN_C_API_H_
#define FLUTTER_PLUGIN_CUPS_FLUTTER_PLUGIN_C_API_H_

#include <flutter_plugin_registrar.h>

#ifdef FLUTTER_PLUGIN_IMPL
#define FLUTTER_PLUGIN_EXPORT __declspec(dllexport)
#else
#define FLUTTER_PLUGIN_EXPORT __declspec(dllimport)
#endif

#if defined(__cplusplus)
extern "C" {
#endif

FLUTTER_PLUGIN_EXPORT void CupsFlutterPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar);

#if defined(__cplusplus)
}  // extern "C"
#endif

#endif  // FLUTTER_PLUGIN_CUPS_FLUTTER_PLUGIN_C_API_H_

#include "include/cups_flutter/cups_flutter_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "cups_flutter_plugin.h"

void CupsFlutterPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  cups_flutter::CupsFlutterPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}

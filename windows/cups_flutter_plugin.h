#ifndef FLUTTER_PLUGIN_CUPS_FLUTTER_PLUGIN_H_
#define FLUTTER_PLUGIN_CUPS_FLUTTER_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace cups_flutter {

class CupsFlutterPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  CupsFlutterPlugin();

  virtual ~CupsFlutterPlugin();

  // Disallow copy and assign.
  CupsFlutterPlugin(const CupsFlutterPlugin&) = delete;
  CupsFlutterPlugin& operator=(const CupsFlutterPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace cups_flutter

#endif  // FLUTTER_PLUGIN_CUPS_FLUTTER_PLUGIN_H_

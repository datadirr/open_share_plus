#ifndef FLUTTER_PLUGIN_OPEN_SHARE_PLUS_PLUGIN_H_
#define FLUTTER_PLUGIN_OPEN_SHARE_PLUS_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace open_share_plus {

class OpenSharePlusPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  OpenSharePlusPlugin();

  virtual ~OpenSharePlusPlugin();

  // Disallow copy and assign.
  OpenSharePlusPlugin(const OpenSharePlusPlugin&) = delete;
  OpenSharePlusPlugin& operator=(const OpenSharePlusPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace open_share_plus

#endif  // FLUTTER_PLUGIN_OPEN_SHARE_PLUS_PLUGIN_H_

#include "include/open_share_plus/open_share_plus_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "open_share_plus_plugin.h"

void OpenSharePlusPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  open_share_plus::OpenSharePlusPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}

#include "include/melon_scaffold/melon_scaffold_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "melon_scaffold_plugin.h"

void MelonScaffoldPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  melon_scaffold::MelonScaffoldPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}

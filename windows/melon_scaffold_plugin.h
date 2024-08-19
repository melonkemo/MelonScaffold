#ifndef FLUTTER_PLUGIN_MELON_SCAFFOLD_PLUGIN_H_
#define FLUTTER_PLUGIN_MELON_SCAFFOLD_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace melon_scaffold {

class MelonScaffoldPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  MelonScaffoldPlugin();

  virtual ~MelonScaffoldPlugin();

  // Disallow copy and assign.
  MelonScaffoldPlugin(const MelonScaffoldPlugin&) = delete;
  MelonScaffoldPlugin& operator=(const MelonScaffoldPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace melon_scaffold

#endif  // FLUTTER_PLUGIN_MELON_SCAFFOLD_PLUGIN_H_

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'melon_scaffold_platform_interface.dart';

/// An implementation of [MelonScaffoldPlatform] that uses method channels.
class MethodChannelMelonScaffold extends MelonScaffoldPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('melon_scaffold');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

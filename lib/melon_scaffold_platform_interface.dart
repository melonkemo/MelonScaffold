import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'melon_scaffold_method_channel.dart';

abstract class MelonScaffoldPlatform extends PlatformInterface {
  /// Constructs a MelonScaffoldPlatform.
  MelonScaffoldPlatform() : super(token: _token);

  static final Object _token = Object();

  static MelonScaffoldPlatform _instance = MethodChannelMelonScaffold();

  /// The default instance of [MelonScaffoldPlatform] to use.
  ///
  /// Defaults to [MethodChannelMelonScaffold].
  static MelonScaffoldPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MelonScaffoldPlatform] when
  /// they register themselves.
  static set instance(MelonScaffoldPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

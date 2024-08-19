
import 'melon_scaffold_platform_interface.dart';

class MelonScaffold {
  Future<String?> getPlatformVersion() {
    return MelonScaffoldPlatform.instance.getPlatformVersion();
  }
}

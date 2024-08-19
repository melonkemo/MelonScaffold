import 'package:flutter_test/flutter_test.dart';
import 'package:melon_scaffold/melon_scaffold.dart';
import 'package:melon_scaffold/melon_scaffold_platform_interface.dart';
import 'package:melon_scaffold/melon_scaffold_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMelonScaffoldPlatform
    with MockPlatformInterfaceMixin
    implements MelonScaffoldPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final MelonScaffoldPlatform initialPlatform = MelonScaffoldPlatform.instance;

  test('$MethodChannelMelonScaffold is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMelonScaffold>());
  });

  test('getPlatformVersion', () async {
    MelonScaffold melonScaffoldPlugin = MelonScaffold();
    MockMelonScaffoldPlatform fakePlatform = MockMelonScaffoldPlatform();
    MelonScaffoldPlatform.instance = fakePlatform;

    expect(await melonScaffoldPlugin.getPlatformVersion(), '42');
  });
}

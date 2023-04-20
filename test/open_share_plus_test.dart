import 'package:flutter_test/flutter_test.dart';
import 'package:open_share_plus/open_share_plus.dart';
import 'package:open_share_plus/open_share_plus_platform_interface.dart';
import 'package:open_share_plus/open_share_plus_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockOpenSharePlusPlatform
    with MockPlatformInterfaceMixin
    implements OpenSharePlusPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final OpenSharePlusPlatform initialPlatform = OpenSharePlusPlatform.instance;

  test('$MethodChannelOpenSharePlus is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelOpenSharePlus>());
  });

  test('getPlatformVersion', () async {
    OpenSharePlus openSharePlusPlugin = OpenSharePlus();
    MockOpenSharePlusPlatform fakePlatform = MockOpenSharePlusPlatform();
    OpenSharePlusPlatform.instance = fakePlatform;

    expect(await openSharePlusPlugin.getPlatformVersion(), '42');
  });
}

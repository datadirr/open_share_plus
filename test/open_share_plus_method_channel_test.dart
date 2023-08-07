import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:open_share_plus/open_share_plus_method_channel.dart';

void main() {
  MethodChannelOpenSharePlus platform = MethodChannelOpenSharePlus();
  const MethodChannel channel = MethodChannel('open_share_plus');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}

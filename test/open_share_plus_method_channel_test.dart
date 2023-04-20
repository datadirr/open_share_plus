import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:open_share_plus/open_share_plus_method_channel.dart';

void main() {
  MethodChannelOpenSharePlus platform = MethodChannelOpenSharePlus();
  const MethodChannel channel = MethodChannel('open_share_plus');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}

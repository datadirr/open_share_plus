import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'open_share_plus_platform_interface.dart';

/// An implementation of [OpenSharePlusPlatform] that uses method channels.
class MethodChannelOpenSharePlus extends OpenSharePlusPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('open_share_plus');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

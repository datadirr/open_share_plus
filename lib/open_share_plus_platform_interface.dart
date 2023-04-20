import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'open_share_plus_method_channel.dart';

abstract class OpenSharePlusPlatform extends PlatformInterface {
  /// Constructs a OpenSharePlusPlatform.
  OpenSharePlusPlatform() : super(token: _token);

  static final Object _token = Object();

  static OpenSharePlusPlatform _instance = MethodChannelOpenSharePlus();

  /// The default instance of [OpenSharePlusPlatform] to use.
  ///
  /// Defaults to [MethodChannelOpenSharePlus].
  static OpenSharePlusPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [OpenSharePlusPlatform] when
  /// they register themselves.
  static set instance(OpenSharePlusPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

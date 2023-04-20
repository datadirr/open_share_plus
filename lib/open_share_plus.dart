import 'open_share_plus_platform_interface.dart';

class OpenSharePlus {
  Future<String?> getPlatformVersion() {
    return OpenSharePlusPlatform.instance.getPlatformVersion();
  }
}

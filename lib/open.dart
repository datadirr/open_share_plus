import 'package:open_filex/open_filex.dart';
import 'package:url_launcher/url_launcher.dart';

enum OpenMode {
  /// Leaves the decision of how to launch the URL to the platform
  /// implementation.
  platformDefault,

  /// Loads the URL in an in-app web view (e.g., Safari View Controller).
  inAppWebView,

  /// Passes the URL to the OS to be handled by another application.
  externalApplication,

  /// Passes the URL to the OS to be handled by another non-browser application.
  externalNonBrowserApplication,
}

/// [Open] class provide open or share content to social media or system apps
class Open {
  /// open content to browser
  static Future<bool> browser(
      {String url = "", OpenMode mode = OpenMode.platformDefault}) async {
    try {
      return await launchUrl(Uri.parse(url), mode: _getLaunchMode(mode));
    } catch (e) {
      return false;
    }
  }

  /// open phone dial
  static Future<bool> phone(
      {String phoneNumber = "",
      OpenMode mode = OpenMode.platformDefault}) async {
    try {
      return await launchUrl(Uri.parse("tel:$phoneNumber"),
          mode: _getLaunchMode(mode));
    } catch (e) {
      return false;
    }
  }

  /// share content to mail
  static Future<bool> mail(
      {String toAddress = "",
      String subject = "",
      String body = "",
      OpenMode mode = OpenMode.platformDefault}) async {
    try {
      return await launchUrl(
          Uri.parse("mailto:$toAddress?subject=$subject&body=$body"),
          mode: _getLaunchMode(mode));
    } catch (e) {
      return false;
    }
  }

  /// share content to whatsapp
  static Future<bool> whatsApp(
      {String? whatsAppNumber,
      String text = "",
      OpenMode mode = OpenMode.externalNonBrowserApplication}) async {
    if (whatsAppNumber != null && whatsAppNumber.isNotEmpty) {
      try {
        return await launchUrl(
            Uri.parse(
                "https://api.whatsapp.com/send?phone=$whatsAppNumber&text=$text"),
            mode: _getLaunchMode(mode));
      } catch (e) {
        return false;
      }
    } else {
      try {
        return await launchUrl(Uri.parse("whatsapp://send?text=$text"),
            mode: _getLaunchMode(mode));
      } catch (e) {
        return false;
      }
    }
  }

  /// open local file (Only ANDROID, IOS)
  static Future<OpenResult> localFile({String filePath = ""}) async {
    return OpenFilex.open(filePath);
  }

  static LaunchMode _getLaunchMode(OpenMode mode) {
    LaunchMode launchMode = LaunchMode.platformDefault;
    switch (mode) {
      case OpenMode.externalNonBrowserApplication:
        launchMode = LaunchMode.externalNonBrowserApplication;
        break;
      case OpenMode.externalApplication:
        launchMode = LaunchMode.externalApplication;
        break;
      case OpenMode.inAppWebView:
        launchMode = LaunchMode.inAppWebView;
        break;
      default:
        launchMode = LaunchMode.platformDefault;
        break;
    }
    return launchMode;
  }
}

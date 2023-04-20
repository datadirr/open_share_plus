[<img src="https://datadirr.com/datadirr.png" width="200" />](https://datadirr.com)

# open_share_plus

Flutter Plugin for sharing contents to social media.You can use it share to Mail, WhatsApp And System Share UI

## Using

For help getting started with Flutter, view our
[online documentation](https://pub.dev/documentation/open_share_plus/latest), which offers tutorials,
samples, guidance on mobile and web development, and a full API reference.

## Installation

First, add `open_share_plus` as a [dependency in your pubspec.yaml file](https://flutter.dev/docs/development/platform-integration/platform-channels).

In your flutter project add the dependency:

```yml
dependencies:
  ...
  open_share_plus:
```

For help getting started with Flutter, view the online
[documentation](https://flutter.io/).

## Setup Configuration

- Please check if use open localFile {support iOS(DocumentInteraction) / android(intent) / PC(ffi) / web(dart:html)} [open_filex](https://pub.dev/packages/open_filex).
- Please check if use open browser, phone, mail and whatsapp [url_launcher](https://pub.dev/packages/url_launcher).

## Example

Please follow this [example](https://github.com/datadirr/open_share_plus/tree/master/example) here.


### Browser

```dart
Open.browser(url: "https://datadirr.com")
```

### Phone Dial

```dart
Open.phone(phoneNumber: "+919726428397")
```

### Mail

```dart
Open.mail(toAddress: "datadirr@gmail.com", subject: "datadirr", body: "datadirr dev")
```

### WhatsApp (whatsAppNumber with country code)

```dart
Open.whatsApp(whatsAppNumber: "919726428397", text: "datadirr")
```

### Local File (Only ANDROID, IOS)

```dart
Open.localFile(filePath: localFilePath)
```
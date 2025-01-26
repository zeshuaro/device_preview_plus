<p align="center">
  <img src="https://github.com/aloisdeniel/flutter_device_preview/raw/master/logo.png" alt="Device Preview for Flutter" />
</p>

[![pub package](https://img.shields.io/pub/v/device_preview_plus.svg)](https://pub.dartlang.org/packages/device_preview_plus)
[![docs](https://img.shields.io/badge/docs-latest-blue.svg)](https://aloisdeniel.github.io/flutter_device_preview)
[![MIT License](https://img.shields.io/github/license/zeshuaro/device_preview_plus.svg)](https://github.com/zeshuaro/device_preview_plus/blob/main/LICENSE)
[![GitHub Actions](https://github.com/zeshuaro/device_preview_plus/actions/workflows/github-actions.yml/badge.svg?event=push)](https://github.com/zeshuaro/device_preview_plus/actions/workflows/github-actions.yml?query=event%3Apush)
[![Codacy Badge](https://app.codacy.com/project/badge/Grade/eb770d6b694640f597e8c0de21117d19)](https://app.codacy.com/gh/zeshuaro/device_preview_plus/dashboard?utm_source=gh&utm_medium=referral&utm_content=&utm_campaign=Badge_grade)
[![style: flutter_lints](https://img.shields.io/badge/style-flutter__lints-4BC0F5.svg)](https://pub.dev/packages/flutter_lints)

[![Github-sponsors](https://img.shields.io/badge/sponsor-30363D?style=for-the-badge&logo=GitHub-Sponsors&logoColor=#EA4AAA)](https://github.com/sponsors/zeshuaro)
[![BuyMeACoffee](https://img.shields.io/badge/Buy%20Me%20a%20Coffee-ffdd00?style=for-the-badge&logo=buy-me-a-coffee&logoColor=black)](https://www.buymeacoffee.com/zeshuaro)
[![Ko-Fi](https://img.shields.io/badge/Ko--fi-F16061?style=for-the-badge&logo=ko-fi&logoColor=white)](https://ko-fi.com/zeshuaro)
[![LiberaPay](https://img.shields.io/badge/Liberapay-F6C915?style=for-the-badge&logo=liberapay&logoColor=black)](https://liberapay.com/zeshuaro/)
[![Patreon](https://img.shields.io/badge/Patreon-F96854?style=for-the-badge&logo=patreon&logoColor=white)](https://patreon.com/zeshuaro)
[![PayPal](https://img.shields.io/badge/PayPal-00457C?style=for-the-badge&logo=paypal&logoColor=white)](https://paypal.me/JoshuaTang)

> This is a fork of [device_preview](https://pub.dev/packages/device_preview) to keep it up to date with newer Flutter versions.

For users migrating from the `device_preview` package the only changes required are changing your `pubspec.yaml`
file to point to `device_preview_plus` and changing any import statements to point to
the updated `package:device_preview_plus\device_preview_plus.dart`.

<p align="center">
  <img src="https://github.com/aloisdeniel/flutter_device_preview/raw/master/device_preview.gif" alt="Device Preview for Flutter" />
</p>

Approximate how your app looks and performs on another device. Main features:

* Preview any device from any device
* Change the device orientation
* Dynamic system configuration (*language, dark mode, text scaling factor, ...)*
* Freeform device with adjustable resolution and safe areas
* Keep the application state
* Plugin system (*Screenshot, File explorer, ...*)
* Customizable plugins

## Getting Started

Add this to your project's `pubspec.yaml` file:

```yml
dependencies:
  device_preview_plus: ^2.2.5
```

## Usage

Wrap your app's root widget in a `DevicePreview` and make sure to :

* Set your app's `useInheritedMediaQuery` to `true`.
* Set your app's `builder` to `DevicePreview.appBuilder`.
* Set your app's `locale` to `DevicePreview.locale(context)`.

> Make sure to override the previous properties as described. If not defined, `MediaQuery` won't be simulated for the selected device.

```dart
import 'package:device_preview_plus/device_preview_plus.dart';

void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}
```

## Demo

<a href='https://flutter-device-preview.firebaseapp.com/' target='_blank'>Open the demo</a>

## Limitations

Think of Device Preview as a first-order approximation of how your app looks and feels on a mobile device. With Device Mode you don't actually run your code on a mobile device. You simulate the mobile user experience from your laptop, desktop or tablet.

> There are some aspects of mobile devices that Device Preview will never be able to simulate. When in doubt, your best bet is to actually run your app on a real device.

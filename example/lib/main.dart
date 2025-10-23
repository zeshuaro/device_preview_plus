import 'package:device_preview_plus/device_preview_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'basic.dart';
import 'custom_plugin.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: (kDebugMode)?true:false,
      tools: const [...DevicePreview.defaultTools, CustomPlugin()],
      builder: (context) => const BasicApp(),
    ),
  );
}

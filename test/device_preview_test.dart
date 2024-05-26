import 'package:device_preview_plus/device_preview_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('render widget', (tester) async {
    await tester.pumpWidget(
      DevicePreview(
        builder: (context) => const MaterialApp(),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(DevicePreview), findsOneWidget);
  });
}

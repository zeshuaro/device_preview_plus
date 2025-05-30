import 'package:device_preview_plus/device_preview_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// A device info that can be customized at runtime to update
/// its current preview.
///
/// See also:
///
/// * [DeviceInfo] which describes a simulated device.
class CustomDeviceInfo implements DeviceInfo {
  /// Creates a new custom device.
  const CustomDeviceInfo._({required this.identifier, required this.data});

  /// Create a new custom device from stored [data].
  factory CustomDeviceInfo(CustomDeviceInfoData data) {
    return CustomDeviceInfo._(
      data: data,
      identifier: CustomDeviceIdentifier(data),
    );
  }

  static const _painter = GenericTabletFramePainter();

  /// The data that contains all of the custom device properties.
  final CustomDeviceInfoData data;

  @override
  CustomDeviceInfo copyWith({
    DeviceIdentifier? identifier,
    String? name,
    EdgeInsets? rotatedSafeAreas,
    EdgeInsets? safeAreas,
    Path? screenPath,
    double? pixelRatio,
    CustomPainter? framePainter,
    Size? frameSize,
    Size? screenSize,
  }) {
    throw UnsupportedError('Read only');
  }

  @override
  final DeviceIdentifier identifier;

  @override
  String get name => data.name;

  @override
  double get pixelRatio => data.pixelRatio;

  @override
  EdgeInsets? get rotatedSafeAreas => null;

  @override
  EdgeInsets get safeAreas => data.safeAreas;

  @override
  Size get screenSize => data.screenSize;

  @override
  Path get screenPath => _painter.createScreenPath(screenSize);

  @override
  Size get frameSize => _painter.calculateFrameSize(screenSize);

  @override
  CustomPainter get framePainter => _painter;

  List<DiagnosticsNode> debugDescribeChildren() => [];

  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(StringProperty('name', name))
      ..add(DoubleProperty('pixelRatio', pixelRatio))
      ..add(DiagnosticsProperty('safeAreas', safeAreas))
      ..add(DiagnosticsProperty('screenSize', screenSize))
      ..add(DiagnosticsProperty('frameSize', frameSize))
      ..add(DiagnosticsProperty('identifier', identifier));
  }

  DiagnosticsNode toDiagnosticsNode({
    String? name,
    DiagnosticsTreeStyle? style,
  }) {
    return DiagnosticsProperty<DeviceInfo>(
      name ?? 'CustomDeviceInfo',
      this,
      style: style ?? DiagnosticsTreeStyle.dense,
    );
  }

  String toStringDeep({
    String prefixLineOne = '',
    String? prefixOtherLines,
    DiagnosticLevel minLevel = DiagnosticLevel.debug,
    int wrapWidth = 65,
  }) {
    return toDiagnosticsNode().toStringDeep(
      prefixLineOne: prefixLineOne,
      prefixOtherLines: prefixOtherLines,
      minLevel: minLevel,
      wrapWidth: wrapWidth,
    );
  }

  String toStringShallow({
    String joiner = ', ',
    DiagnosticLevel minLevel = DiagnosticLevel.debug,
  }) {
    final properties = <String>[
      'name: $name',
      'pixelRatio: $pixelRatio',
      'safeAreas: $safeAreas',
      'screenSize: $screenSize',
      'frameSize: $frameSize',
    ];
    return properties.join(joiner);
  }

  String toStringShort() {
    return name;
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeviceInfo(identifier: $identifier, name: $name, rotatedSafeAreas: $rotatedSafeAreas, '
        'safeAreas: $safeAreas, screenPath: $screenPath, pixelRatio: $pixelRatio, '
        'framePainter: $framePainter, frameSize: $frameSize, screenSize: $screenSize)';
  }
}

/// The device identifier for a [CustomDeviceInfo].
class CustomDeviceIdentifier implements DeviceIdentifier {
  /// Create a new custom device identifier from the given [data].
  const CustomDeviceIdentifier(this.data);

  /// The custom device data that this identifier represents.
  final CustomDeviceInfoData data;

  /// The predefined key associated to the custom device.
  static const identifier = 'custom_device';

  @override
  String get name => data.name;

  @override
  TargetPlatform get platform => data.platform;

  @override
  DeviceType get type => data.type;

  @override
  // ignore: non_nullable_equals_parameter
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeviceIdentifier &&
            other.name == name &&
            other.type == type &&
            other.platform == platform);
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ name.hashCode ^ type.hashCode ^ platform.hashCode;
}

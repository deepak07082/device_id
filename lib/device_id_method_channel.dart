import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'device_id_platform_interface.dart';

/// An implementation of [DeviceIdPlatform] that uses method channels.
class MethodChannelDeviceId extends DeviceIdPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('device_id');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

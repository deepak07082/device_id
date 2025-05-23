import 'package:flutter_test/flutter_test.dart';
import 'package:device_id/device_id.dart';
import 'package:device_id/device_id_platform_interface.dart';
import 'package:device_id/device_id_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDeviceIdPlatform
    with MockPlatformInterfaceMixin
    implements DeviceIdPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final DeviceIdPlatform initialPlatform = DeviceIdPlatform.instance;

  test('$MethodChannelDeviceId is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelDeviceId>());
  });

  test('getPlatformVersion', () async {
    DeviceId deviceIdPlugin = DeviceId();
    MockDeviceIdPlatform fakePlatform = MockDeviceIdPlatform();
    DeviceIdPlatform.instance = fakePlatform;

    expect(await deviceIdPlugin.getPlatformVersion(), '42');
  });
}

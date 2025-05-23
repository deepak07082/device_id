
import 'device_id_platform_interface.dart';

class DeviceId {
  Future<String?> getPlatformVersion() {
    return DeviceIdPlatform.instance.getPlatformVersion();
  }
}

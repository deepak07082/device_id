import 'device_id_api.dart';

class DeviceId {
  Future<String?> getDeviceId() async {
    final api = DeviceIdApi();
    final deviceId = await api.getDeviceId();
    return deviceId;
  }
}

import 'package:pigeon/pigeon.dart';

@HostApi()
abstract class DeviceIdApi {
  String getDeviceId();
}

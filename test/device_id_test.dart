// ignore_for_file: non_constant_identifier_names

import 'package:flutter/src/services/binary_messenger.dart';
import 'package:flutter_test/flutter_test.dart';
// ignore: avoid_relative_lib_imports
import '../lib/device_id_api.dart';

class MockDeviceIdApi implements DeviceIdApi {
  @override
  Future<String> getDeviceId() async {
    return 'mock_device_id';
  }

  @override
  BinaryMessenger? get pigeonVar_binaryMessenger => throw UnimplementedError();

  @override
  String get pigeonVar_messageChannelSuffix => throw UnimplementedError();
}

void main() {
  test('getDeviceId returns mocked value', () async {
    final mockApi = MockDeviceIdApi();
    final result = await mockApi.getDeviceId();
    expect(result, 'mock_device_id');
  });
}

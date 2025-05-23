# 📱 device_id for Flutter


A lightweight Flutter plugin to retrieve the **device_id** from Android and iOS using native code. It uses [Pigeon](https://pub.dev/packages/pigeon) for type-safe, compile-time-safe communication between Dart and the platform-specific layers.

## ✨ Features

- ✅ Fetch a unique device identifier (Android & iOS)
- ✅ Uses Pigeon for native-Dart communication
- ✅ Simple and clean API

## 📦 Installation

Add the package to your `pubspec.yaml`:

yaml
dependencies:
  device_id_plugin:
    git:
      url: https://github.com/your_username/device_id_plugin.git

## 🛠️ Platform Implementation
Android
Use Settings.Secure.ANDROID_ID or a suitable method in the generated DeviceIdApi.java class.

iOS
Use UIDevice.current.identifierForVendor?.uuidString in the generated DeviceIdApi.m file.

## 🚀 Usage

import 'package:device_id_plugin/device_id.dart';

final deviceId = await DeviceId().getDeviceId();
print('Device ID: $deviceId');

## 🔒 Permissions
Ensure required permissions are added in the platform projects:

    Android: No special permission required to access ANDROID_ID.
    iOS: No permission needed for identifierForVendor.

## 📱 Compatibility

| Platform | Supported |
| -------- | --------- |
| Android  | ✅         |
| iOS      | ✅         |

## 📄 License
This project is licensed under the MIT License. See the LICENSE file for details.

## 💬 Contributing
Feel free to submit issues or pull requests. Contributions are welcome!

## 🌐 Author
Made with ❤️ by Deepak.
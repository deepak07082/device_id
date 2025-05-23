flutter pub run pigeon \
  --input pigeons/platform_device_id.dart \
  --dart_out lib/device_id_api.dart \
  --kotlin_out android/src/main/kotlin/com/example/device_id/DeviceIdApi.kt \
  --kotlin_package com.example.device_id \
  --swift_out ios/Classes/DeviceIdApi.swift

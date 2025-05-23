import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:device_platform_uid/device_id.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String platformId = '';
  final _deviceIdPlugin = DeviceId();

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    try {
      platformId = await _deviceIdPlugin.getDeviceId() ?? 'Unknown';
    } on PlatformException {
      platformId = 'Failed to get platform version.';
    }

    if (!mounted) return;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('DEVICE ID')),
        body: Center(child: Text('YOUR DEVICE IS: $platformId\n')),
      ),
    );
  }
}

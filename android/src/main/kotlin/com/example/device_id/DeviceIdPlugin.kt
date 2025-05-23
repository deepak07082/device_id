package com.example.device_id

import android.content.Context
import com.example.device_id.DeviceIdApi
import com.example.device_id.DeviceIdApiImpl
import io.flutter.embedding.engine.plugins.FlutterPlugin

class DeviceIdPlugin : FlutterPlugin {

  override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    // Register the Pigeon-generated API using your implementation
    DeviceIdApi.setUp(
      flutterPluginBinding.binaryMessenger,
      DeviceIdApiImpl(flutterPluginBinding.applicationContext)
    )
  }

  override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    DeviceIdApi.setUp(binding.binaryMessenger, null)
  }
}

import Flutter
import UIKit

public class DeviceIdPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    // Register the Pigeon API using your implementation
    let messenger = registrar.messenger()
    DeviceIdApiSetup.setUp(binaryMessenger: messenger, api: DeviceIdApiImpl())
  }
}

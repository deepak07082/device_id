// Autogenerated from Pigeon (v25.3.2), do not edit directly.
// See also: https://pub.dev/packages/pigeon

import Foundation

#if os(iOS)
  import Flutter
#elseif os(macOS)
  import FlutterMacOS
#else
  #error("Unsupported platform.")
#endif

/// Error class for passing custom error details to Dart side.
final class PigeonError: Error {
  let code: String
  let message: String?
  let details: Sendable?

  init(code: String, message: String?, details: Sendable?) {
    self.code = code
    self.message = message
    self.details = details
  }

  var localizedDescription: String {
    return
      "PigeonError(code: \(code), message: \(message ?? "<nil>"), details: \(details ?? "<nil>")"
  }
}

private func wrapResult(_ result: Any?) -> [Any?] {
  return [result]
}

private func wrapError(_ error: Any) -> [Any?] {
  if let pigeonError = error as? PigeonError {
    return [
      pigeonError.code,
      pigeonError.message,
      pigeonError.details,
    ]
  }
  if let flutterError = error as? FlutterError {
    return [
      flutterError.code,
      flutterError.message,
      flutterError.details,
    ]
  }
  return [
    "\(error)",
    "\(type(of: error))",
    "Stacktrace: \(Thread.callStackSymbols)",
  ]
}

private func isNullish(_ value: Any?) -> Bool {
  return value is NSNull || value == nil
}

private func nilOrValue<T>(_ value: Any?) -> T? {
  if value is NSNull { return nil }
  return value as! T?
}


private class DeviceIdApiPigeonCodecReader: FlutterStandardReader {
}

private class DeviceIdApiPigeonCodecWriter: FlutterStandardWriter {
}

private class DeviceIdApiPigeonCodecReaderWriter: FlutterStandardReaderWriter {
  override func reader(with data: Data) -> FlutterStandardReader {
    return DeviceIdApiPigeonCodecReader(data: data)
  }

  override func writer(with data: NSMutableData) -> FlutterStandardWriter {
    return DeviceIdApiPigeonCodecWriter(data: data)
  }
}

class DeviceIdApiPigeonCodec: FlutterStandardMessageCodec, @unchecked Sendable {
  static let shared = DeviceIdApiPigeonCodec(readerWriter: DeviceIdApiPigeonCodecReaderWriter())
}

/// Generated protocol from Pigeon that represents a handler of messages from Flutter.
protocol DeviceIdApi {
  func getDeviceId() throws -> String
}

/// Generated setup class from Pigeon to handle messages through the `binaryMessenger`.
class DeviceIdApiSetup {
  static var codec: FlutterStandardMessageCodec { DeviceIdApiPigeonCodec.shared }
  /// Sets up an instance of `DeviceIdApi` to handle messages through the `binaryMessenger`.
  static func setUp(binaryMessenger: FlutterBinaryMessenger, api: DeviceIdApi?, messageChannelSuffix: String = "") {
    let channelSuffix = messageChannelSuffix.count > 0 ? ".\(messageChannelSuffix)" : ""
    let getDeviceIdChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.device_id.DeviceIdApi.getDeviceId\(channelSuffix)", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      getDeviceIdChannel.setMessageHandler { _, reply in
        do {
          let result = try api.getDeviceId()
          reply(wrapResult(result))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      getDeviceIdChannel.setMessageHandler(nil)
    }
  }
}

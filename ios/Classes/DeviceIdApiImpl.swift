import UIKit

class DeviceIdApiImpl: DeviceIdApi {
  func getDeviceId() -> String {
    return UIDevice.current.identifierForVendor?.uuidString ?? "unknown"
  }
}

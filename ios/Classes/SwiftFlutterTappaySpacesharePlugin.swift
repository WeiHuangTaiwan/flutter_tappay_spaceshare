import Flutter
import UIKit
// import TPDirect // TODO: Uncomment when adding TPDirect.framework

public class SwiftFlutterTappaySpacesharePlugin: NSObject, FlutterPlugin {
  private let channelName = "flutter_tappay_spaceshare"
  
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_tappay_spaceshare", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterTappaySpacesharePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
      
    case "initialize":
      if let args = call.arguments as? [String: Any],
         let apiKey = args["apiKey"] as? String,
         let appId = args["appId"] as? String {
        // TODO: Initialize TapPay SDK via TPDirect, e.g.:
        // TPDSetup.setWithAppId(Int(appId) ?? 0, withAppKey: apiKey, withServerType: sandbox ? .sanbox : .production)
        result("Initialized")
      } else {
        result(FlutterError(code: "INVALID_ARGUMENTS",
                            message: "API key or App ID missing",
                            details: nil))
      }

    case "getTappayPrime":
      guard let args = call.arguments as? [String: Any],
            let appId     = args["appId"]     as? String,
            let appKey    = args["appKey"]    as? String,
            let sandbox   = args["sandbox"]   as? Bool,
            let cardNum   = args["cardNumber"]as? String,
            let dueMonth  = args["dueMonth"]  as? String,
            let dueYear   = args["dueYear"]   as? String,
            let ccv       = args["ccv"]       as? String
      else {
        result(FlutterError(code: "INVALID_ARGUMENTS",
                            message: "Missing one or more required fields",
                            details: nil))
        return
      }
      // TODO: 
      // 1. Add TPDirect.framework to your Xcode project.
      // 2. Import TPDirect above.
      // 3. Use TPDForm/TPDCard (and TPDCcv if needed) to collect card info.
      // 4. Call card.getPrime() (or ccv.getPrime()) and invoke result(prime) on success.
      result("dummy_prime") // Stub: return nil until TapPay SDK is integrated

    default:
      result(FlutterMethodNotImplemented)
    }
  }
}

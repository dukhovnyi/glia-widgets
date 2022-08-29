import Flutter
import SalemoveSDK
import UIKit

public class SwiftGliaWidgetsPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "glia_widgets", binaryMessenger: registrar.messenger())
    let instance = SwiftGliaWidgetsPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  let salemoveDelegate = SalemoveAppDelegate()
  
  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
 
  public func applicationDidBecomeActive(_ application: UIApplication) {
    print("applicationDidBecomeActive")
    salemoveDelegate.applicationDidBecomeActive(application)
  }

  public func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    salemoveDelegate.application(
      application,
      didFinishLaunchingWithOptions: launchOptions
    )
    return true
  }
}

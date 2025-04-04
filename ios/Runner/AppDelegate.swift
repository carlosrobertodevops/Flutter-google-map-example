import UIKit
import Flutter
import GoogleMaps
import flutter_config

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    let key: String = FlutterConfigPlugin.env(for: "IOS_MAPS_API_KEY")
    GMSServices.provideAPIKey(key)
    // GMSServices.provideAPIKey("YOUR-API-KEY")
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}

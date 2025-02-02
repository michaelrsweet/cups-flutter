//
// CUPS iOS/macOS plugin for Flutter.
//
// Copyright © 2025 by Micharl R Sweet.
//
// Licensed under Apache License v2.0.  See the file "LICENSE" for more
// information.
//

import Cocoa
import FlutterMacOS

public class CupsFlutterPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "cups_flutter", binaryMessenger: registrar.messenger)
    let instance = CupsFlutterPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      result("macOS " + ProcessInfo.processInfo.operatingSystemVersionString)
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}


// import Flutter
// import UIKit
// 
// public class CupsFlutterPlugin: NSObject, FlutterPlugin {
//   public static func register(with registrar: FlutterPluginRegistrar) {
//     let channel = FlutterMethodChannel(name: "cups_flutter", binaryMessenger: registrar.messenger())
//     let instance = CupsFlutterPlugin()
//     registrar.addMethodCallDelegate(instance, channel: channel)
//   }
// 
//   public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
//     switch call.method {
//     case "getPlatformVersion":
//       result("iOS " + UIDevice.current.systemVersion)
//     default:
//       result(FlutterMethodNotImplemented)
//     }
//   }
// }

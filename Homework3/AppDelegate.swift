//
//  AppDelegate.swift
//  Homework3
//
//  Created by Linlin on 2021/4/4.
//

import UIKit
import AVFoundation
class AppDelegate: NSObject, UIApplicationDelegate {
 func application(_ application: UIApplication, didFinishLaunchingWithOptions
launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {

 AVPlayer.setupBgMusic()
 AVPlayer.bgQueuePlayer.play()

 return true
 }
}

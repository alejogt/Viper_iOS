//
//  AppDelegate.swift
//  viper
//
//  Created by Alejandro Gil Tobon on 4/12/20.
//

import UIKit

@main
class AppDelegate: UIResponder {
    var window: UIWindow?
}

extension AppDelegate: UIApplicationDelegate {    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        return true
    }
}


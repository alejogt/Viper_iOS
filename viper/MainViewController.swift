//
//  MainViewController.swift
//  viper
//
//  Created by Alejandro Gil Tobon on 28/12/20.
//

import UIKit

class MainViewController: UIViewController
{
    override func viewDidLoad() {
        super.viewDidLoad();
        UIApplication.shared.windows.first!.rootViewController = RouterLogin.initModule();
        UIApplication.shared.windows.first!.makeKeyAndVisible()
    }
}

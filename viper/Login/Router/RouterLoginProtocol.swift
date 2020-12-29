//
//  RouterProtocol.swift
//  viper
//
//  Created by Alejandro Gil Tobon on 9/12/20.
//

import UIKit
protocol RouterLoginProtocol: class {
    static func initModule() -> UIViewController
    func userLoggedIn(user:User)
}

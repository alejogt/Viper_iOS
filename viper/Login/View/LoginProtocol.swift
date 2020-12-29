//
//  PpalViewProtocol.swift
//  viper
//
//  Created by Alejandro Gil Tobon on 4/12/20.
//

import Foundation
import UIKit

protocol LoginProtocol: class {
    func showActivityIndicator()
    func hideActivityIndicator()
    func showLoginError() 
}

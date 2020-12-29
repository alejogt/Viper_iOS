//
//  PresenterPpalView.swift
//  viper
//
//  Created by Alejandro Gil Tobon on 9/12/20.
//

import Foundation
class PresenterLogin: PresenterLoginProtocol {
    public var LoginView: LoginProtocol?;
    public var LoginInteractor: InteractorLoginProtocol?;
    public var LoginRouter: RouterLoginProtocol?;
    
    required init() {
        
    }
      
    func validateUser(user:String, password:String) {
        self.LoginView?.showActivityIndicator();
        self.LoginInteractor?.ValidateUser(user: user, password: password)
    }
}

extension PresenterLogin: InteractorOutputLoginProtocol {
    func UserValidated(authenticatedUser: User) {
        self.LoginView?.hideActivityIndicator()
        self.LoginRouter?.userLoggedIn(user:authenticatedUser)
    }
    
    func UserError() {
        self.LoginView?.hideActivityIndicator()
        self.LoginView?.showLoginError()
    }
}

//
//  InteractorPpalView.swift
//  viper
//
//  Created by Alejandro Gil Tobon on 9/12/20.
//

import Foundation
class InteractorLogin: InteractorLoginProtocol {
    public weak var LoginInteractorOutput: InteractorOutputLoginProtocol!
    
    func ValidateUser(user:String, password:String)
    {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            if ((user=="Admin")&&(password=="admin"))
            {
                let authUser = User()
                authUser.name = "Admin"
                authUser.lastName = "Viper"
                authUser.birthday = "29/12/2020"
                authUser.fullName = "Admin Viper"
                authUser.photoURL = "Https://Photo.com"
                
                self.LoginInteractorOutput.UserValidated(authenticatedUser: authUser)
            }
            else
            {
                self.LoginInteractorOutput.UserError();
            }
        }
    }
}

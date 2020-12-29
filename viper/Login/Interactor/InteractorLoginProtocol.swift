//
//  InteractorPpalViewProtocol.swift
//  viper
//
//  Created by Alejandro Gil Tobon on 9/12/20.
//

protocol InteractorLoginProtocol: class {
    func ValidateUser(user:String, password:String)
}

protocol InteractorOutputLoginProtocol: class {
    func UserValidated(authenticatedUser:User)
    func UserError()
}

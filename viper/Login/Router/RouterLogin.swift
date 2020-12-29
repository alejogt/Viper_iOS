//
//  RouterPpalView.swift
//  viper
//
//  Created by Alejandro Gil Tobon on 9/12/20.
//

import UIKit
class RouterLogin: RouterLoginProtocol {
    weak var viewController: UIViewController?
    
    func userLoggedIn(user: User) {
        let LoginStoryboard = UIStoryboard(name: "Login", bundle: nil)
        let home = LoginStoryboard.instantiateViewController(identifier: "Home") as HomeViewController
        home.fullName = user.fullName
        viewController?.navigationController?.pushViewController(home, animated: true)
    }
    
    public static func initModule() -> UIViewController {
        let LoginStoryboard = UIStoryboard(name: "Login", bundle: nil)
        let view = LoginStoryboard.instantiateViewController(identifier: "Login") as LoginViewController
        let presenter = PresenterLogin()
        let interactor = InteractorLogin()
        let router = RouterLogin()
        let navigation = UINavigationController(rootViewController: view)
        navigation.topViewController?.navigationItem.title  = "V.I.P.E.R"
        
        view.presenter = presenter
        presenter.LoginView = view
        presenter.LoginInteractor = interactor
        interactor.LoginInteractorOutput = presenter
        presenter.LoginRouter = router
        router.viewController = view
        
        return navigation
    }    
}

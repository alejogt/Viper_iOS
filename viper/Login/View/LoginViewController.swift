//
//  PpalViewController.swift
//  viper
//
//  Created by Alejandro Gil Tobon on 4/12/20.
//

import UIKit

class LoginViewController: UIViewController, LoginProtocol {
    @IBOutlet weak var user: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
        
    var activityIndicator: UIView?;
    var toolbar: UIToolbar?;
    public var presenter : PresenterLogin!;
      
    @IBAction func Login(_ sender: Any) {
        self.presenter.validateUser(user: user.text!,  password: password.text!);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad();
        self.activityIndicator = UIView();        
        SetCustomFields();
        SetBehavior();
        SetCustomAppareance();
    }
   
    func SetCustomFields()
    {
        user.keyboardType = UIKeyboardType.emailAddress;
        user.inputAccessoryView = CreateDoneButtonToolbar();
        password.keyboardType = UIKeyboardType.alphabet;
        password.inputAccessoryView = CreateDoneButtonToolbar();
    }
    
    func SetBehavior()
    {
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapinView)));
    }
    
    func SetCustomAppareance()
    {
        loginBtn.layer.masksToBounds = true;
        loginBtn.layer.cornerRadius = loginBtn.layer.frame.height / 2;
        
        loginBtn.layer.masksToBounds = false;
        loginBtn.layer.shadowOpacity = 0.18;
        loginBtn.layer.shadowOffset = CGSize(width: 0, height: 2);
        loginBtn.layer.shadowRadius = 2;
        loginBtn.layer.shadowColor = UIColor.black.cgColor;
    }
    
    public func CreateDoneButtonToolbar()->UIToolbar
    {
        toolbar = UIToolbar()
        toolbar?.backgroundColor = UIColor.darkGray;
        toolbar?.barStyle = UIBarStyle.default;
        toolbar?.isTranslucent = true;
        toolbar?.sizeToFit();

        let doneButton =  UIBarButtonItem(title: "Done", style: UIBarButtonItem.Style.done, target: self, action: #selector(tapinView))
        doneButton.tintColor = UIColor.darkGray
        doneButton.width = (toolbar?.frame.width)!
        toolbar?.setItems([doneButton], animated: true)
        return toolbar!;
    }

    @objc public func tapinView() {
        self.view.endEditing(true);
    }
    
    public func showActivityIndicator() {
        let cgRect = self.view.bounds;
        activityIndicator?.bounds = cgRect;
        activityIndicator?.frame = cgRect;
        activityIndicator?.backgroundColor = UIColor.white.withAlphaComponent(0.8);
        let loading = UIActivityIndicatorView();
        loading.style = UIActivityIndicatorView.Style.large;
        loading.color = UIColor.darkGray
        loading.startAnimating();
        loading.center = self.view.center;
        activityIndicator?.addSubview(loading);
        self.view.addSubview(activityIndicator ?? UIActivityIndicatorView());
    }
    
    public func hideActivityIndicator() {
        activityIndicator?.removeFromSuperview()
    }
    
    public func showLoginError() {
        let alert = UIAlertController(title: "Error", message: "Usuario o Clave Invalida", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Aceptar", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}

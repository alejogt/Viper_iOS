//
//  HomeViewController.swift
//  viper
//
//  Created by Alejandro Gil Tobon on 29/12/20.
//

import UIKit

class HomeViewController: UIViewController  {
    @IBOutlet weak var name: UILabel!
    public var fullName :String?
    
    override func viewDidLoad()
    {
        name.text = self.fullName
    }
}

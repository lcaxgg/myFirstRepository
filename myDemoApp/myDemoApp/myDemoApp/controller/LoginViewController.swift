//
//  LoginViewController.swift
//  myDemoApp
//
//  Created by OPSolutions on 1/13/22.
//

import UIKit

class LoginViewController: UIViewController{
    
    @IBOutlet weak var stackview_1: UIStackView!
    @IBOutlet weak var stackview_2: UIStackView!
    
    @IBOutlet weak var label_2: UILabel!
    
    @IBOutlet weak var txt_email: UITextField!
    
    @IBOutlet weak var backgroundGradientView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stackview_2.setCustomSpacing(35, after: label_2)
    }
    
}

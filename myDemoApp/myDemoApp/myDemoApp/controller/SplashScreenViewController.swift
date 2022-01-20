//
//  SplashScreenViewController.swift
//  myDemoApp
//
//  Created by OPSolutions on 1/14/22.
//

import UIKit
import AlamofireImage

class SplashScreenViewController: UIViewController{
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var savvy: UILabel!
    
    var timer = Timer()
    var count: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let stringOne = "SOUL SAVVY"
        let stringTwo = "SAVVY"

        let range = (stringOne as NSString).range(of: stringTwo)

        let attributedText = NSMutableAttributedString.init(string: stringOne)
       // attributedText.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.blue, range: range)
       attributedText.setAttributes([
        .font: UIFont.systemFont(ofSize: 35),
        .foregroundColor: UIColor.systemTeal
        ], range: range)
        
        self.savvy.attributedText = attributedText
  
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
    }
    
    @objc func timerAction(){
        
        count += 1
        if count == 3{
            
            let storyboard = UIStoryboard(name: "Login", bundle: nil)
            let LoginVC = storyboard.instantiateViewController(withIdentifier: "LoginSB") as! LoginViewController
            self.present(LoginVC, animated: true, completion: nil)
            timer.invalidate()
        }
    }
    
}

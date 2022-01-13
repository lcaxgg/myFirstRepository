//
//  ViewController.swift
//  myFirebaseApp
//
//  Created by OPSolutions on 1/12/22.
//

import UIKit
import FirebaseDatabase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let ref = Database.database(url: "https://myiosapp-a444b-default-rtdb.asia-southeast1.firebasedatabase.app").reference(withPath: "Sample")
        
        ref.child("someid/name").setValue("lcaxgg98")
        
    }


}


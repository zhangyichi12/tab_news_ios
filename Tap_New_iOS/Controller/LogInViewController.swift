//
//  LogInViewController.swift
//  Tap_New_iOS
//
//  Created by Yichi Zhang on 2/21/18.
//  Copyright © 2018 Yichi Zhang. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class LogInViewController: UIViewController {

    @IBOutlet weak var emailFiled: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginPressed() {
        SVProgressHUD.show()
    
        Auth.auth().signIn(withEmail: emailFiled.text!, password: passwordField.text!, completion: { (user, error) in
            
            if error != nil {
                print("Login error: \(error!)")
            }
            else {
                print("Login successfful!")
                
                SVProgressHUD.dismiss()
                
                self.performSegue(withIdentifier: "GetIntoNews", sender: self)
            }
        })
            
    }
}

//
//  LoginViewController.swift
//  App-EcoMarket
//
//  Created by Ivette Fernandez on 16/04/24.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        guard let username = usernameTextField.text,
                     let password = passwordTextField.text else {
             
                   return
               }

           
               if username == "ifernandez" && password == "ifernandez123" {
              
                   performSegue(withIdentifier: "showAllProducts", sender: self)
               } else {
                  
                   print(" ❌ Invalid credentials. please try again.")
               }
           }
    }


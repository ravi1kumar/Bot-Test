//
//  LoginViewController.swift
//  BotTest
//
//  Created by B0208144 on 29/10/18.
//  Copyright © 2018 B0208144. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    let segueIdentifier = "showLoggedIn"
    let credential = ["a" : "1Abcdefg", "ab" : "2Abcdefg", "abc" : "3Abcdefg"]

    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        guard let identifier = segue.identifier else {
            return
        }
        
        if identifier == segueIdentifier {
            let vc = segue.destination as! LoggedInViewController
            vc.userName = userNameTF.text
        }
    }

    @IBAction func login(_ sender: Any) {
        guard let userName = userNameTF.text else {
            return
        }
        
        guard let password = passwordTF.text else {
            return
        }
        
        if validCredential(userName: userName, password: password), let rp = credential[userName], rp == password {
            performSegue(withIdentifier: segueIdentifier, sender: nil)
        }
    }
    
    func validCredential(userName: String, password: String) -> Bool {
        
        return Utility.validateUserName(userName) && Utility.validatePassword(password)
    }
    
}

extension LoginViewController: UITextFieldDelegate {
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField === userNameTF {
            passwordTF.becomeFirstResponder()
            return false
        } else {
            userNameTF.resignFirstResponder()
            passwordTF.resignFirstResponder()
            return true
        }
    }
}


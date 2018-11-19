//
//  LoggedInViewController.swift
//  BotTest
//
//  Created by B0208144 on 14/11/18.
//  Copyright © 2018 B0208144. All rights reserved.
//

import UIKit

class LoggedInViewController: UIViewController {
    
    var userName: String!

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        if let userName = userName {
            label.text = "Hello \(userName)!"
        } else {
            label.text = "Hi ..."
        }
        
        navigationItem.hidesBackButton = true
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Sign Out", style: .done, target: self, action: #selector(signOut))
    }
    
    @objc func signOut()  {
        self.navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}

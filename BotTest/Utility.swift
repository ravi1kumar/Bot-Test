//
//  Utility.swift
//  BotTest
//
//  Created by B0208144 on 29/10/18.
//  Copyright © 2018 B0208144. All rights reserved.
//

import Foundation

class Utility {
    func reverseString(_ string: String) -> String {
        return String(string.reversed())
    }
    
    func lastCharacterOfString(_ string: String) -> Character? {
        return string.last
    }
    
    func toggleBool(_ bool: Bool) -> Bool {
        return !bool
    }
    
    static func validateEmail(_ email: String) -> Bool {
        let regExString = "^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,4}$"
        let regExPredicate = NSPredicate(format: "SELF MATCHES %@", regExString)
        return regExPredicate.evaluate(with: email.uppercased())
    }
    
    static func validatePassword(_ password: String) -> Bool {
        let regExString = "^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])[A-Za-z0-9_#@%\\*\\-]{8,24}$"
        let regExPredicate = NSPredicate(format: "SELF MATCHES %@", regExString)
        return regExPredicate.evaluate(with: password)
    }
    
    static func validateUserName(_ username: String) -> Bool {
        let regExString = "^[A-Za-z]+$"
        let regExPredicate = NSPredicate(format: "SELF MATCHES %@", regExString)
        return regExPredicate.evaluate(with: username)
    }
}

//
//  ChangePasswordViewModel.swift
//  MVVMexample05
//
//  Created by 황지현 on 2023/06/07.
//

import Foundation
import UIKit

struct BrokenRule {
    
    var propertyName: String
    var message: String
}

protocol ViewModel {
    
    var brokenRules: [BrokenRule] { get set }
    var isValid: Bool { mutating get }
}

struct ChangePasswordViewModel: ViewModel {
    
    var brokenRules: [BrokenRule] = [BrokenRule]()
    
    var newPassword = Dynamic<String>("")
    var confirmPassword = Dynamic<String>("")
    
    var isValid: Bool {
        mutating get {
            self.brokenRules = [BrokenRule]()
            self.validate()
            return self.brokenRules.count == 0 ? true : false
        }
    }
}

extension ChangePasswordViewModel {
    
    mutating private func validate() {
        
        if newPassword.value != confirmPassword.value {
            self.brokenRules.append(BrokenRule(propertyName: "confirmPassword", message: "Passwords are not matching"))
        }
        if (newPassword.value?.count)! < 8 {
            self.brokenRules.append(BrokenRule(propertyName: "newPassword", message: "Password should be at least 8 characters long"))
        }
    }
}

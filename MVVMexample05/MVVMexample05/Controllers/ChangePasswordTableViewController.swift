//
//  ChangePasswordTableViewController.swift
//  MVVMexample05
//
//  Created by 황지현 on 2023/06/07.
//

import Foundation
import UIKit

class ChangePasswordTableViewController : UITableViewController {
    
    private var viewModel :ChangePasswordViewModel = ChangePasswordViewModel()
    
    @IBOutlet weak var newPasswordTextField :BindingTextField! {
        didSet {
            self.newPasswordTextField.bind { self.viewModel.newPassword.value = $0 }
        }
    }
    @IBOutlet weak var confirmPasswordTextField :BindingTextField! {
        didSet {
            self.confirmPasswordTextField.bind { self.viewModel.confirmPassword.value = $0 }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func save() {
        
        if self.viewModel.isValid {
            print("update the user's password")
        } else {
            print(self.viewModel.brokenRules)
        }
    }
    
}

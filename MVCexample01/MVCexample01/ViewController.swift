//
//  ViewController.swift
//  MVCexample01
//
//  Created by 황지현 on 2023/05/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var emailTxtField: UITextField!
    @IBOutlet weak var passwordTxtField: UITextField!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        message.isHidden = true
    }
    
    @IBAction func didPressLogin(_ sender: UIButton) {
        
        guard let email = emailTxtField.text else {return}
        guard let password = passwordTxtField.text else {return}
        
        user = User(email: email, password: password)
        
        if user.email == "test@gmail.com" && user.password == "1234" {
            message.text = "로그인 성공"
            message.isHidden = false
        }
    }


}


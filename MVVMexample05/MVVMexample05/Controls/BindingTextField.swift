//
//  BindingTextField.swift
//  MVVMexample05
//
//  Created by 황지현 on 2023/06/07.
//

import Foundation
import UIKit

class BindingTextField: UITextField {
    
    var textChanged: (String) -> () = { _ in }
    
    func bind(callback: @escaping (String) -> ()) {
        self.textChanged = callback
        self.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        self.textChanged(textField.text!)
    }
}

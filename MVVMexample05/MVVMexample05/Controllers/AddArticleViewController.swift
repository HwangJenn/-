//
//  AddArticleViewController.swift
//  MVVMexample05
//
//  Created by 황지현 on 2023/06/07.
//

import Foundation
import UIKit

class AddArticleViewController: UIViewController {
    
    @IBOutlet weak var titleTextField: BindingTextField! {
        didSet {
            titleTextField.bind { self.viewModel.title.value = $0 }
        }
    }
    @IBOutlet weak var descriptionTextField: BindingTextField! {
        didSet {
            descriptionTextField.bind { self.viewModel.description.value = $0 }
        }
    }
    
    var viewModel: AddArticleViewModel! {
        
        didSet {
            viewModel.title.bind = { [unowned self] in self.titleTextField.text = $0 }
            viewModel.description.bind = {[unowned self] in self.descriptionTextField.text = $0 }
        }
    }
    @IBAction func AddArticleButtonPressed(_ sender: Any) {
        
        self.viewModel.title.value = "hello world"
        self.viewModel.description.value = "description"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewModel = AddArticleViewModel()
    }
}

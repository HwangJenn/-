//
//  ViewController.swift
//  MVVMexample01
//
//  Created by 황지현 on 2023/05/30.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // view
        let catView = CatView()
        
        let viewModel = CatViewModel()
        viewModel.configure(catView)
        
        self.view.addSubview(catView)
        
        //layout
        catView.translatesAutoresizingMaskIntoConstraints = false
        catView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 135).isActive = true
        catView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        catView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.9).isActive = true
        catView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -100).isActive = true
    }
}


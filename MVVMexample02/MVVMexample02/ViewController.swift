//
//  ViewController.swift
//  MVVMexample02
//
//  Created by 황지현 on 2023/05/31.
//

import UIKit

class ViewController: UIViewController {
    
    //ViewModel 인스턴스화해서 사용
    private var personViewModel = ViewModel()
    
    @IBOutlet weak var profileIMG: UIImageView!
    @IBOutlet weak var setProfileButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var ageTextField: UITextField!
    
    // view life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // view model이 업데이트 되면 view를 바꿀수 있도록 data binding
        personViewModel.image.bind { image in self.profileIMG.image = image }
        personViewModel.name.bind { name in self.nameLabel.text = name }
        personViewModel.age.bind { age in self.ageLabel.text = age }
    }
    
    //view model 업데이트

    @IBAction func touchSetProfile(_ sender: UIButton) {
        personViewModel.setImage(to: "person.fill")
    }
    
    @IBAction func touchSetNameButton(_ sender: UIButton) {
        if let name = nameTextField.text {
            personViewModel.setName(to: name)
        }
    }
    
    @IBAction func touchSetAgeButton(_ sender: UIButton) {
        if let age = ageTextField.text {
            personViewModel.setAge(to: age)
        }
    }
    
}


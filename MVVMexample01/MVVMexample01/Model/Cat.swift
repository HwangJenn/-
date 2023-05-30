//
//  Cat.swift
//  MVVMexample01
//
//  Created by 황지현 on 2023/05/30.
//

import Foundation

class Cat {
    
    // 고양이 품종
    enum Breed {
        case russianblue
        case koreanshorthair
        case munchkin
        case sphinx
    }
    
    let name: String
    let birthday: Date
    let breed: Breed
    let imageName: String
    
    init(name: String = "russianblue", birthday: Date = Date(timeIntervalSinceNow: (-2 * 86500 * 300)), breed: Breed = .russianblue, imageName: String = "russianblue.jpg") {
        self.name = name
        self.birthday = birthday
        self.breed = breed
        self.imageName = imageName
    }
}

//
//  CatViewModel.swift
//  MVVMexample01
//
//  Created by 황지현 on 2023/05/30.
//

import Foundation

class CatViewModel {
    let cat: Cat
    let calendar: Calendar
    
    init() {
        self.cat = Cat()
        self.calendar = Calendar(identifier: .gregorian)
    }
    
    var name: String {
        return cat.name
    }
    
    var imageName: String {
        return cat.imageName
    }
    
    var ageText: String {
        let today = calendar.startOfDay(for: Date())
        let birthday = calendar.startOfDay(for: cat.birthday)
        let components = calendar.dateComponents([.year], from: birthday, to: today)
        let age = components.year == nil ? 0 : components.year!
        return "\(age) years old"
    }
    
    var reward: String {
        switch cat.breed {
        case .koreanshorthair:
            return "2000000"
        case .munchkin:
            return "5000000"
        case .russianblue:
            return "1000000"
        case .sphinx:
            return "4000000"
        }
    }
}

extension CatViewModel {
    func configure(_ view: CatView) {
        view.nameLabel.text = name
        view.imageName = imageName
        view.ageLabel.text = ageText
        view.reward.text = reward
    }
}

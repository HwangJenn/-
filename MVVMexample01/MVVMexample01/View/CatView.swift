//
//  CatView.swift
//  MVVMexample01
//
//  Created by 황지현 on 2023/05/30.
//

import Foundation
import UIKit

class CatView: UIView {
    
    // 뷰를 스토리보드로 구성하지 않고 코드로 작성시
    var imageName: String = "" {
        willSet {
            imageView.image = UIImage(named: newValue)
        }
    }
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.textAlignment = .left
        nameLabel.font = UIFont(name: "AvenirNextCondensed-MediumItalic", size: 20)!
        nameLabel.textColor = .white
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        return nameLabel
    }()
    
    let ageLabel: UILabel = {
        let ageLabel = UILabel()
        ageLabel.textAlignment = .left
        ageLabel.font = UIFont(name: "AvenirNextCondensed-MediumItalic", size: 20)!
        ageLabel.textColor = .white
        ageLabel.translatesAutoresizingMaskIntoConstraints = false
        return ageLabel
    }()
    
    let reward: UILabel = {
        let reward = UILabel()
        reward.textAlignment = .left
        reward.font = UIFont(name: "AvenirNextCondensed-MediumItalic", size: 20)!
        reward.textColor = .white
        reward.translatesAutoresizingMaskIntoConstraints = false
        return reward
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor(red: 28/255, green: 28/255, blue: 30/255, alpha: 1)
        
        addSubview(imageView)
        addSubview(nameLabel)
        addSubview(ageLabel)
        addSubview(reward)
        
        // layout
        imageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 50).isActive = true
        imageView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        imageView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.804).isActive = true
        imageView.heightAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.804).isActive = true
        
        nameLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 30).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: 10).isActive = true
        
        ageLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant:20).isActive = true
        ageLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor, constant: 0).isActive = true
        
        reward.topAnchor.constraint(equalTo: ageLabel.bottomAnchor, constant: 20).isActive = true
        reward.leadingAnchor.constraint(equalTo: ageLabel.leadingAnchor, constant: 0).isActive = true
    }
    required init?(coder: NSCoder) {
        fatalError("init?(coder:) is not supported")
    }
}

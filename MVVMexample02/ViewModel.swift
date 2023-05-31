//
//  ViewModel.swift
//  MVVMexample02
//
//  Created by 황지현 on 2023/05/31.
//

import Foundation
import UIKit

public class ViewModel {
    
    //아무 설정 없는 초기의 view를 보여주기위한 목적의 뱐수 초기화
    let defaultName = "춘향이"
    let defaultAge = "24"
    let defaultImage = "person"
    
    //변수 초기화
    let name = Observable("")
    let age = Observable("")
    //뱐수의 자료형 명시
    let image: Observable<UIImage?> = Observable(nil)
    
    init() {
        setName(to: defaultName)
        setAge(to: defaultAge)
        setImage(to: defaultImage)
    }
    
    //value를 바꾸어서 didSet이 실행되도록
    func setName(to name: String) {
        self.name.value = name
    }
    func setAge(to age: String) {
        self.age.value = age
    }
    func setImage(to image: String) {
        if let image = UIImage(systemName: image) {
            self.image.value = image
        }
    }
}

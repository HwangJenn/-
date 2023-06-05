//
//  LoginViewModel.swift
//  RXSWIFTexample01
//
//  Created by 황지현 on 2023/06/05.
//

import Foundation
import RxSwift
import RxRelay

struct LoginViewModel {
    var username = BehaviorRelay<String>(value: "")
    var password = BehaviorRelay<String>(value: "")
    
    //사용자 이름과 비밀번호가 유효한지 체크하는 computed property
    //combineLatest: BeviorRelay에서 이벤트가 발생할 때마다 각 시퀀스의 가장 최근의 값들을 결합해서 다룰 수 있다
    var isValid: Observable<Bool> {
        return Observable.combineLatest(username.asObservable(), password.asObservable()) {
            usernameStr, passwordStr in usernameStr.count >= 4 && passwordStr.count >= 4
        }
    }
}

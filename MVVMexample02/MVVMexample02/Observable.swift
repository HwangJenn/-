//
//  Observable.swift
//  MVVMexample02
//
//  Created by 황지현 on 2023/05/31.
//
// dqtq binding의 역할을 하기 위해 observable 테크닉을 사용한다
import Foundation

class Observable<T> {
    
    typealias Listner = (T) -> Void
    
    var listner: Listner?
    
    //값이 변할 때마다 listner 호출. view의 액션에 따라 view model 값이 최신화
    var value: T {
        didSet {
            listner?(value)
        }
    }
    
    init(_ value: T) {
        self.value = value
    }
    
    func bind(_ closure: @escaping (T) -> Void) {
        self.listner = closure
        listner?(value)
    }
}

//
//  DynamicTypes.swift
//  MVVMexample05
//
//  Created by 황지현 on 2023/06/07.
//

import Foundation

class Dynamic<T> {
    
    var bind: (T) -> () = { _ in }
    
    var value: T? {
        didSet {
            bind(value!)
        }
    }
    
    init(_ v :T) {
        value = v
    }
    
}

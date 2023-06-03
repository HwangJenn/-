//
//  Article.swift
//  MVVMexample04
//
//  Created by 황지현 on 2023/06/02.
//

import Foundation

typealias JSONDictionary = [String: AnyObject]

class Article {
    
    var title: String
    var descrption: String
    
    init(title: String, descrption: String) {
        self.title = title
        self.descrption = descrption
    }
    
    init?(dictionary: JSONDictionary) {
        
        guard let title = dictionary["title"] as? String,
              let description = dictionary["description"] as? String else {
            return nil
        }
        self.title = title
        self.descrption = description
    }
}

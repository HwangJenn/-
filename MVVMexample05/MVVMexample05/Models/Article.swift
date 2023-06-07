//
//  Article.swift
//  MVVMexample05
//
//  Created by 황지현 on 2023/06/07.
//

import Foundation

class Article {
    
    var title: String
    var description: String
    
    init(title: String, description: String) {
        self.title = title
        self.description = description
    }
    
    init?(dictionary: JSONDictionary) {
        
        guard let title = dictionary["title"] as? String,
              let description = dictionary["description"] as? String else {
            return nil
        }
        self.title = title
        self.description = description
    }
}

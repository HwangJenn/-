//
//  WebService.swift
//  MVVMexample04
//
//  Created by 황지현 on 2023/06/02.
//

import Foundation

class WebService {
    
    func getArticles(url: URL, callback: @escaping ([Article]) -> ()) {
        
        var articles = [Article]()
        
        URLSession.shared.dataTask(with: url) {
            data, response, error in
            
            if let data = data {
                
                let json = try! JSONSerialization.jsonObject(with: data, options: [])
                let dictionary = json as! JSONDictionary
                
                let articleDictionaries = dictionary["articles"] as! [JSONDictionary]
                
                articles = articleDictionaries.compactMap {
                    dictionary in return Article(dictionary: dictionary)
                    
                }
            }
            
            DispatchQueue.main.async {
                callback(articles)
                
            }
        }.resume()
    }
}

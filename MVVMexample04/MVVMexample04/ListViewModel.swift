//
//  ListViewModel.swift
//  MVVMexample04
//
//  Created by 황지현 on 2023/06/02.
//

import Foundation

struct ListViewModel {
    
    var title: String? = "Articles"
    var articles: [ArticleViewModel] = [ArticleViewModel]()
}

extension ListViewModel {
    
    init(articles: [ArticleViewModel]) {
        self.articles = articles
    }
}

struct ArticleViewModel {
    
    var title: String
    var description: String
}

extension ArticleViewModel {
    
    init(article: Article) {
        
        self.title = article.title
        self.description = article.descrption
        
    }
}

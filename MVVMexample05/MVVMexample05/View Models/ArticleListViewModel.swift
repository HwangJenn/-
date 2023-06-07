//
//  ArticleListViewModel.swift
//  MVVMexample05
//
//  Created by 황지현 on 2023/06/07.
//

import Foundation

struct ArticleListViewModel {
    
    var title: String? = "Articles"
    var articles: [ArticleViewModel] = [ArticleViewModel]()
}

extension ArticleListViewModel {
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
        self.description = article.description
    }
}

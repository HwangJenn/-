//
//  AddArticleViewModel.swift
//  MVVMexample05
//
//  Created by 황지현 on 2023/06/07.
//

import Foundation

struct AddArticleViewModel {
    
    var title: Dynamic<String> = Dynamic("")
    var description: Dynamic<String> = Dynamic("")
}

extension AddArticleViewModel {
    init(article: Article) {
        self.title = Dynamic<String>(article.title)
        self.description = Dynamic<String>(article.description)
    }
}

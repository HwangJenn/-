//
//  Article.swift
//  MVVMexample03
//
//  Created by 황지현 on 2023/06/01.
//
// Model
import Foundation

struct ArticleList:Decodable {
    let articles: [Article]
}

struct Article:Decodable {
    let title: String?
    let description: String?
}

// jason 데이터 안에 articles라는 array를 articleList로 받을 것이다.
// 필요로 하는 건 title, description에 대한 정보뿐이기에 article 하나에는 필요로 하는 필드만 적어준다

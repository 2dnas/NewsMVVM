//
//  Article.swift
//  GoodNews
//
//  Created by sandro shanshiashvili on 18.09.21.
//

import Foundation

struct ArticleList : Decodable {
    let articles : [Article]
}

struct Article : Decodable {
    let title : String?
    let description : String?
}

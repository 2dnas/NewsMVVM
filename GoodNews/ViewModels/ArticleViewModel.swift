//
//  ArticleViewModel.swift
//  GoodNews
//
//  Created by sandro shanshiashvili on 18.09.21.
//

import Foundation

struct ArticleListViewModel {
    let articles : [Article]
}

extension ArticleListViewModel {
    var numberOfSection : Int {
        return 1
    }
    
    func numberOfRowsInSection(_ section : Int) -> Int {
        return self.articles.count
    }
    
    func articleAtIndex(_ index : Int) -> ArticleViewModel {
        let article = self.articles[index]
        return ArticleViewModel(article)
    }
}

struct ArticleViewModel {
    private let article : Article
}

extension ArticleViewModel {
    init(_ article : Article) {
        self.article = article
    }
}

extension ArticleViewModel {
    
    var title : String {
        return self.article.title ?? "Title"
    }
    
    var description : String {
        return  self.article.description ?? "Description"
    }
}

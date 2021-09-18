//
//  WebServices.swift
//  GoodNews
//
//  Created by sandro shanshiashvili on 18.09.21.
//

import Foundation

class WebServices {
    func getArticles(url : URL, completionHandler : @escaping ([Article]?) -> ()) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                completionHandler(nil)
            } else if let data = data {
                do {
                    let articleList = try? JSONDecoder().decode(ArticleList.self, from: data)
                    if let articleList = articleList {
                        print(articleList.articles)
                        completionHandler(articleList.articles)
                    }
                }
            }
        }.resume()
    }
}

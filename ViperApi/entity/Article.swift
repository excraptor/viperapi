//
//  Article.swift
//  ViperApi
//
//  Created by Balla Tamás on 2022. 10. 03..
//

import Foundation

class Articles: Codable {
    var articles: [Article]
}

class Article: Codable, AnyEntity {
    
    var title: String?
    var author: String?
    var publishedDate: String?
    var imageURL: String?
    var summary: String?
    
}

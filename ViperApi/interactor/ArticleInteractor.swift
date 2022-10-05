//
//  ArticleInteractor.swift
//  ViperApi
//
//  Created by Balla Tamás on 2022. 10. 03..
//

import Foundation


class ArticleInteractor: AnyInteractor {
    unowned var presenter: AnyPresenter?
    
    private unowned let api: API
    
    public func searchArticles(with query: String) {
        api.searchArticles(withQuery: query)
    }
    
    public init(api: API) {
        self.api = api
    }
}

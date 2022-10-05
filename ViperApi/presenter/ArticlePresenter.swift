//
//  ArticlePresenter.swift
//  ViperApi
//
//  Created by Balla Tamás on 2022. 10. 04..
//

import Foundation

class ArticlePresenter: AnyPresenter {
    
    unowned var router: AnyRouter?
    
    unowned var interactor: AnyInteractor?
    
    unowned var view: AnyView?
    
    init() {
        interactor?.searchArticles(with: "Elon Musk")
    }
    
    func interactorDidFetchArticles(with result: Result<[Article], Error>) {
        
    }
    
    
}

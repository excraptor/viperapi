//
//  ArticleRouter.swift
//  ViperApi
//
//  Created by Balla Tamás on 2022. 10. 04..
//

import Foundation


// this will be our entrypoint

class ArticleRouter: AnyRouter {
    var entry: EntryPoint?
    
    static func start() -> AnyRouter {
        let router = ArticleRouter()
        
        // Assign View, Interactor, Presenter
        
        let view: AnyView = MainView()
        let interactor: AnyInteractor = ArticleInteractor(api: API.instance)
        let presenter: AnyPresenter = ArticlePresenter()
        
        view.presenter = presenter
        
        interactor.presenter = presenter
        
        presenter.router = router
        presenter.interactor = interactor
        presenter.view = view
        
        router.entry = view as? EntryPoint
        
        return router
    }
    
    
}

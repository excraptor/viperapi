//
//  AnyPresenter.swift
//  ViperApi
//
//  Created by Balla Tamás on 2022. 10. 04..
//

import Foundation

protocol AnyPresenter: AnyObject {
    var router: AnyRouter? { get set }
    var interactor: AnyInteractor? { get set }
    var view: AnyView? { get set }
    
    func interactorDidFetchArticles(with result: Result<[Article], Error>)
}

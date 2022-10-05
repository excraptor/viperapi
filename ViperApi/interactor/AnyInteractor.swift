//
//  AnyInteractor.swift
//  ViperApi
//
//  Created by Balla Tamás on 2022. 10. 04..
//

import Foundation

protocol AnyInteractor: AnyObject {
    var presenter: AnyPresenter? { get set }
    
    func searchArticles(with query: String)
}

//
//  AnyView.swift
//  ViperApi
//
//  Created by Balla Tamás on 2022. 10. 04..
//

import Foundation

protocol AnyView: AnyObject {
    var presenter: AnyPresenter? { get set }
    
    func update(with data: [AnyEntity])
    func update(with error: Error)
}

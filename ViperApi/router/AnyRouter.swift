//
//  AnyRouter.swift
//  ViperApi
//
//  Created by Balla Tamás on 2022. 10. 04..
//

import Foundation
import UIKit

typealias EntryPoint = AnyView & UIViewController

protocol AnyRouter: AnyObject {
    
    var entry: EntryPoint? { get set }
    
    static func start() -> AnyRouter
}

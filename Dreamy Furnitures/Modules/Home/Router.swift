//
//  Router.swift
//  Dreamy Furnitures
//
//  Created by Ainul Kazi on 2/10/22.
//

import Foundation
import SwiftUI

typealias EntryPoint = any View

protocol BaseRouter{
    var entry : EntryPoint? { get }
    
    static func start () -> BaseRouter
}


class HomeRouter : BaseRouter{
    
    var entry: EntryPoint?
    
    
    static func start() -> BaseRouter {
        let router = HomeRouter()
        
        var presenter = HomePresenter()
        let view = HomeView(presenter: presenter)
        var interector:BaseIntector = HomeIntector()
        
        interector.presenter = presenter
        
        presenter.router = router
        presenter.interector = interector
        
        router.entry = view
        return router
    }
    
    
}

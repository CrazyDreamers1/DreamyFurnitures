//
//  Dreamy_FurnituresApp.swift
//  Dreamy Furnitures
//
//  Created by Ainul Kazi on 2/10/22.
//

import SwiftUI

@main
struct Dreamy_FurnituresApp: App {

    
    var body: some Scene {
//        let router = HomeRouter.start()
//        let view = router.entry!
        WindowGroup {
            HomeView(presenter: HomePresenter())
        }
    }
}

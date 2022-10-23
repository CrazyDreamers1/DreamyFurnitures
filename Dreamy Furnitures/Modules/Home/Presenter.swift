//
//  Presenter.swift
//  Dreamy Furnitures
//
//  Created by Ainul Kazi on 2/10/22.
//

import Foundation
import SwiftUI

enum FetchError:Error{
    case noDataFound
    case failed
}

protocol BasePresenter{
    var router : BaseRouter? { get set }
    var interector: BaseIntector? {get set}
    
    func interectorDidFetchFurnitures(with result: Result<[FurnitureCategory],Error>)
}


class HomePresenter : ObservableObject, BasePresenter{

    var router: BaseRouter?
    @Published var furnitures:[FurnitureCategory] = WebServiceHandler.shared.loadAllFurniture() ?? []
    
    var interector: BaseIntector?{
        didSet{
            interector?.getFurnitures()
        }
    }
        
    func interectorDidFetchFurnitures(with result: Result<[FurnitureCategory], Error>) {
        switch result{
        case .success(let furnitures):
            self.furnitures = furnitures
        case .failure(let error):
            print(error.localizedDescription)
        }
    }
    
}

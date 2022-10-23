//
//  Interector.swift
//  Dreamy Furnitures
//
//  Created by Ainul Kazi on 2/10/22.
//

import Foundation


protocol BaseIntector {
    var presenter: BasePresenter? {get set}
    func getFurnitures()
}

class HomeIntector: BaseIntector {
    
    var webServiceHandler = WebServiceHandler.shared
        
    var presenter: BasePresenter?
    
    func getFurnitures() {
        if let furnitures = webServiceHandler.loadAllFurniture(){
            presenter?.interectorDidFetchFurnitures(with: .success(furnitures))
        }else{
            presenter?.interectorDidFetchFurnitures(with: .failure(FetchError.noDataFound))
        }
    }
    

}

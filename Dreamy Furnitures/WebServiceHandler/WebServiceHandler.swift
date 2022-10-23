//
//  WebServiceHandler.swift
//  Dreamy Furnitures
//
//  Created by Ainul Kazi on 4/10/22.
//

import Foundation


class WebServiceHandler{
    
    static let shared = WebServiceHandler()
    private init(){}
    
    func loadAllFurniture() -> [FurnitureCategory]? {
        
        var dreamySofa1  = Furniture(name: "Stool chair", image: "t2", description: "")
        var dreamySofa2  = Furniture(name: "Sofa pillow", image: "p2", description: "")
        var dreamySofa3  = Furniture(name: "sdfhy", image: "s3", description: "")
        
        var dreamyChair1 = Furniture(name: "Clasic Chair", image: "cc2", description: "")
        var dreamyChair2 = Furniture(name: "Chair Special", image: "t1", description: "")
        var dreamyChair3 = Furniture(name: "sdfh", image: "cc3", description: "")
//
//        var dreamyMSofa1 = Furniture(name: "", image: "m1", description: "")
//        var dreamyMSofa2 = Furniture(name: "", image: "m2", description: "")
//        var dreamyMSofa3 = Furniture(name: "", image: "m3", description: "")
//
//        var dreamyCSofa2 = Furniture(name: "", image: "sc2", description: "")
//        var dreamyCSofa1 = Furniture(name: "", image: "sc1", description: "")
//        var dreamyCSofa3 = Furniture(name: "", image: "sc3", description: "")

        
        var dreamyFurnitures:[FurnitureCategory] = []
        
        let dreamySofaCake = FurnitureCategory(name: "Sofa Cake", furnitures: [dreamySofa1, dreamySofa2, dreamySofa3], image: "c1")
        dreamyFurnitures.append(dreamySofaCake)
        
        let dreamyChairs = FurnitureCategory(name: "Blob Sofa", furnitures: [dreamyChair1, dreamyChair2, dreamyChair3], image: "c3")
        dreamyFurnitures.append(dreamyChairs)
        
        return dreamyFurnitures
    }
}

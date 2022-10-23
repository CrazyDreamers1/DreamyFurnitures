//
//  Entity.swift
//  Dreamy Furnitures
//
//  Created by Ainul Kazi on 2/10/22.
//

import Foundation


struct FurnitureCategory{
    var id = UUID()
    var name:String
    var furnitures:[Furniture] = []
    var image:String
    
}

struct Furniture{
    var id = UUID()
    var name:String
    var image:String
    var description:String
}

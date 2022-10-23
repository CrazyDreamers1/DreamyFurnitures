//
//  FurnitureCell.swift
//  Dreamy Furnitures
//
//  Created by Ainul Kazi on 4/10/22.
//

import SwiftUI


struct FurnitureCell:View{
    var furniture:Furniture
    
    var body: some View{
        HStack (alignment: .bottom, spacing: 20){
            
            
            Text(furniture.name)
                .fontWeight(.regular)
                .lineLimit(2)
                .minimumScaleFactor(0.5)
            
            Spacer()
            
            Text("100 x Mrq")
                .fontWeight(.regular)
                .minimumScaleFactor(0.8)
                .font(.system(size: 11))
                .lineLimit(2)
            
            
            Image(furniture.image)
                .resizable()
                .scaledToFit()
                .frame(width: 80,height: 60)
                .cornerRadius(5)

            
//            Image(systemName: "plus")
//                .resizable()
////                .fontWeight(.heavy)
//                .frame(width: 15,height: 12)
//                .cornerRadius(5)
            
        }

    }
}


struct FurnitureCell_Previews: PreviewProvider {
    static var previews: some View {
        FurnitureCell(furniture: (WebServiceHandler.shared.loadAllFurniture()?.first?.furnitures.first)!)
    }
}


//
//  ListHeader.swift
//  Dreamy Furnitures
//
//  Created by Ainul Kazi on 19/10/22.
//

import SwiftUI

struct ListHeader: View {
    
    var body: some View {
        VStack(alignment:.leading){
            Text("My \nStoreHouse")
                .foregroundColor(.secondary)
                .font(.system(size: 25))
                .fontWeight(.semibold)
                .multilineTextAlignment(.leading)
                .padding()
            
            HStack{
                Text("Name Prod.")
                    .fontWeight(.semibold)
                Spacer()
//                Text("mQ")
//                    .fontWeight(.semibold)
            }
            .padding()
            .font(.system(size: 12))
        }
    }
}

struct ListHeader_Previews: PreviewProvider {
    static var previews: some View {
        ListHeader()
    }
}

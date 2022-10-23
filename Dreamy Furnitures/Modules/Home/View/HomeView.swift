//
//  ContentView.swift
//  Dreamy Furnitures
//
//  Created by Ainul Kazi on 2/10/22.
//

import SwiftUI
import Combine

struct HomeView: View {
    @ObservedObject var presenter:HomePresenter
    @State var isAnimate:Bool = false
    
    let duration = 1.0
    
    var body: some View {
        VStack {
            Spacer()
            
            ZStack {
                BgTopShape(isAnimate: $isAnimate)
                FurnitureObjects(isAnimate: $isAnimate)
            }
            
            Spacer()

            
            VStack (alignment: .leading){
                ListHeader()
                
                if isAnimate{
                    List(presenter.furnitures.first!.furnitures, id:\.id){ item in
                        FurnitureCell(furniture: item)
                    }
                    .listStyle(.plain)
                    .transition(.move(edge: .trailing))
                    .animation(.easeOut(duration: duration))
                }else{
                    List(presenter.furnitures[1].furnitures, id:\.id){ item in
                        FurnitureCell(furniture: item)
                    }
                    .listStyle(.plain)
                    .transition(.move(edge: .leading))
                    .animation(.easeOut(duration: duration))
                }

                
            }
            Spacer()
            ControlView(isAnimate: $isAnimate)
        }
        .padding()
//        .background(.gray)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(presenter: HomePresenter())
    }
}

//
//  ControlView.swift
//  Dreamy Furnitures
//
//  Created by Ainul Kazi on 19/10/22.
//

import SwiftUI

struct ControlView: View {
    
    @Binding var isAnimate : Bool
    
    var body: some View {
        HStack {
            
            if isAnimate{
                Button {
                    withAnimation(.easeOut(duration: 1.0)) {
                        isAnimate.toggle()
                    }
                    
                } label: {
                    Image("prev1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 35)
                }
            }
            
            Spacer()
            
            Button {
                withAnimation(.easeOut(duration: 1.0)) {
                    isAnimate.toggle()
                }
                
            } label: {
                Image("next")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 35)
            }
        }
    }
}

struct ContentView1_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(presenter: HomePresenter())
    }
}




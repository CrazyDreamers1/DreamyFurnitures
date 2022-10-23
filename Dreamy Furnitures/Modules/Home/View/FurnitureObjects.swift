//
//  FurnitureObjects.swift
//  Dreamy Furnitures
//
//  Created by Ainul Kazi on 20/10/22.
//

import SwiftUI

struct FurnitureObjects: View {
    @Binding var isAnimate : Bool
//    let isAnimate = false
    
    var body: some View {
    
        ZStack{
            Image("s1")
                .resizable()
                .frame(width:150, height: 110)
                .scaledToFit()
                .rotation3DEffect(.degrees(isAnimate ? 180 : 0), axis: (x: 1, y: 0, z: 0))
                .offset(x: -160, y: -100)
                .rotationEffect(Angle(degrees: isAnimate ? 180 : 0))
                .blur(radius: isAnimate ? 0 : 5)
//                .opacity(isAnimate ? 1 : 0.8)
            
            Image("t2")
                .resizable()
                .frame(width:100, height: 100)
                .scaledToFit()
                .rotation3DEffect(.degrees(isAnimate ? 180 : 0), axis: (x: 1, y: 0, z: 0))
                .offset(x: -80, y: -140)
                .rotationEffect(Angle(degrees: isAnimate ? 180 : 0))
                .offset(x: isAnimate ? 0 : -30)
                .blur(radius: 2)
            
            Image("s3")
                .resizable()
                .frame(width:150, height: 80)
                .scaledToFit()
                .offset(x: 160, y: 100)
                .rotationEffect(Angle(degrees: isAnimate ? 180 : 0))
                .blur(radius: isAnimate ? 5 : 0)
//                .opacity(isAnimate ? 0.8 : 1)
            
            Image("p2")
                .resizable()
                .frame(width:72, height: 100)
                .scaledToFit()
                .offset(x: -180, y: 40)
                .rotationEffect(Angle(degrees: isAnimate ? 180 : 0))
                .blur(radius: 3)
            
            Image("b2")
                .resizable()
                .frame(width:72, height: 100)
                .scaledToFit()
                .offset(x: 160, y: -85)
                .rotationEffect(Angle(degrees: isAnimate ? 180 : 0))
                .blur(radius: 2)
            
            Image("b1")
                .resizable()
                .frame(width:72, height: 100)
                .scaledToFit()
                .offset(x: 60, y: 120)
                .rotationEffect(Angle(degrees: isAnimate ? 180 : 0))
                .blur(radius: 2)
                .offset(x: isAnimate ? -40 : 0)
            
            Image("sst1")
                .resizable()
                .frame(width:40, height: 40)
                .scaledToFit()
                .offset(x: -10, y: 115)
            
        }
        .offset(x: -115, y: -60)
        
    }
}



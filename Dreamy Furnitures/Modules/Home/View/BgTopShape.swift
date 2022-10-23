//
//  Shape.swift
//  Dreamy Furnitures
//
//  Created by Ainul Kazi on 11/10/22.
//

import SwiftUI

struct BgTopShape: View {
    @Binding var isAnimate : Bool
    let textOffset = -30.0

    var body: some View {
        
        VStack {
                
                ZStack {
                        RoundedRectangle(cornerRadius: 60)
                        .frame(width:300, height: 280)
                        .rotationEffect(Angle(degrees: isAnimate ? 90 : 0))
                        .rotation3DEffect(Angle(degrees: 20), axis: (x:0 , y: 2.5, z: 1))
                        .offset(y: -50)
                        .foregroundColor(isAnimate ? .gray : Color("redFed"))
                    
                    if isAnimate{
                        
                        Text("Sofa \nCake")
                            .fontWeight(.heavy)
                            .font(.system(size: 38))
                            .multilineTextAlignment(.leading)
                            .lineLimit(2)
                            .foregroundColor(.white)
                            .frame(width:120)
                            .transition(.move(edge: .leading))
                            .animation(.easeOut(duration: 1.5))
                            .offset(x: textOffset, y: textOffset)
                    }else{
                        Text("Blob \nsofa")
                            .fontWeight(.heavy)
                            .font(.system(size: 38))
                            .multilineTextAlignment(.center)
                            .lineLimit(2)
                            .foregroundColor(.white)
                            .frame(width:120)
//                            .rotation3DEffect(Angle(degrees: 20), axis: (x:0 , y: 0.00001, z: 0))
                            .transition(.move(edge: .trailing))
                            .animation(.easeOut(duration: 1.5))
                            .offset(x: textOffset, y: textOffset)
                    }

                }
                .frame(width:UIScreen.main.bounds.width - 25, height: 310)
                .offset(x: -50, y: 15)
                .cornerRadius(10)
                .clipped()
                .background(.white)
            
            Spacer()

        }
        

    }
}



struct MyShape:Shape {
    func path(in rect: CGRect) -> Path {
        
        Path{ path in
            path.move(to: .zero)
            path.addLine(to: CGPoint(x: rect.maxX - rect.width / 7, y: rect.minY + rect.height / 20))
            path.addQuadCurve(to: CGPoint(x: rect.maxX, y: rect.minY + rect.height / 7), control: CGPoint(x: rect.maxX , y: rect.minY + 12))

            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY - rect.maxY / 20))
            path.addQuadCurve(to: CGPoint(x: rect.maxX - rect.width / 7, y: rect.maxY), control: CGPoint(x: rect.maxX , y: rect.maxY))
            
            path.addQuadCurve(to: CGPoint(x: rect.minX + 10, y: rect.midY - 10), control: CGPoint(x: rect.midX / 2 , y: rect.midY - 20))
            
            path.addQuadCurve(to: CGPoint(x: rect.minX, y: rect.midY/2 ), control: CGPoint(x: -rect.midX / 4 , y: rect.midY / 1.2 ))
            
            path.closeSubpath()
        }
    }
    
    
}


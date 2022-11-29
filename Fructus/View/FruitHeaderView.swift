//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Pratyush  on 5/4/21.
//

import SwiftUI

struct FruitHeaderView: View {
    //MARK:- Properties
    @State private var isAnimatingImage: Bool = false
    
    var fruit: Fruit
    
    //MARK:- Body
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color.black.opacity(0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1 : 0.6)
        }
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                self.isAnimatingImage = true
            }
        }
        .frame(height: 440.0)
    }
}

//MARK:- Preview
struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[9])
            .previewLayout(.fixed(width: 375.0, height: 440.0))
    }
}

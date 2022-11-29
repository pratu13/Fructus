//
//  FruitCardView.swift
//  Fructus
//
//  Created by Pratyush  on 5/4/21.
//

import SwiftUI

struct FruitCardView: View {
    //MARK:- Properties
    
    var fruit: Fruit
    @State private var isAnimating: Bool = false
    
    
    //MARK:- Body
    var body: some View {
        ZStack {
            VStack(spacing: 20.0) {
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color.black.opacity(0.15), radius: 8.0, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                Text(fruit.title)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color.black.opacity(0.15), radius: 2.0, x: 2, y: 2)
                
                Text(fruit.headline)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480.0)
                
                StartButtonView()
                
            }
        }
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                self.isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20.0)
        .padding(.horizontal, 20)
    }
}

//MARK:- Preview
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[10])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}

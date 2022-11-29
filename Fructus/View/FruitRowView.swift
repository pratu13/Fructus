//
//  FruitRowView.swift
//  Fructus
//
//  Created by Pratyush  on 5/4/21.
//

import SwiftUI

struct FruitRowView: View {
    //MARK:- Properties
    var fruit: Fruit
    
    //MARK:- Body
    var body: some View {
        HStack {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80.0, height: 80.0)
                .shadow(color: Color.black.opacity(0.3), radius: 3, x: 2, y: 2)
                .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
                .cornerRadius(10.0)
            VStack(alignment: .leading, spacing: 5.0) {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            }
        }
    }
}

//MARK:- Preview
struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: fruitsData[12])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

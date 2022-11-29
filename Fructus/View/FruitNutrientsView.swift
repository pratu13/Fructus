//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Pratyush  on 5/4/21.
//

import SwiftUI

struct FruitNutrientsView: View {
    //MARK:- Properties
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protiens", "Vitamins", "Minerals"]
    
    //MARK:- Body
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(nutrients.indices, id: \.self) { index in
                    Divider()
                        .padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                                .renderingMode(.template)
                            Text(nutrients[index])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25.0)
                        Text(fruit.nutrition[index])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}

//MARK:- Preview
struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[10])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375.0, height: 480.0))
            .padding()
    }
}

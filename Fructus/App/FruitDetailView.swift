//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Pratyush  on 5/4/21.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK:- Properties
    var fruit: Fruit
    
    //MARK:- Body
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20.0){
                    
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20.0) {
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                    
                        FruitNutrientsView(fruit: fruit)
                        
                        
                        Text("learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640,  alignment: .center)
                }
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
                
            }
            .edgesIgnoringSafeArea(.top)
        
        }
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

//MARK:- Preview
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[5])
    }
}

//
//  ContentView.swift
//  Fructus
//
//  Created by Pratyush  on 5/4/21.
//

import SwiftUI

struct ContentView: View {
    //MARK:- Properties
    var fruits: [Fruit] = fruitsData
    
    @State private var isShowingSettings: Bool = false
    
    //MARK:- Body
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                }
            }
            .sheet(isPresented: $isShowingSettings) {
                SettingsView()
            }
            .navigationBarItems(
                trailing:
                    Button(action: {
                        self.isShowingSettings = true
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    })
            .navigationTitle("Fruits")
           
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

//MARK:- Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}

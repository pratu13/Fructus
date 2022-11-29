//
//  StartButtonView.swift
//  Fructus
//
//  Created by Pratyush  on 5/4/21.
//

import SwiftUI

struct StartButtonView: View {
    //MARK:- Properties
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    //MARK:- Body
    var body: some View {
        Button(action:  {
            self.isOnboarding = false
        }) {
            HStack(spacing: 8.0) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
        }
        .accentColor(Color.white)
    }
}

//MARK:- Preview
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}

//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Pratyush  on 5/4/21.
//

import SwiftUI

struct SettingsLabelView: View {
    //MARK:- Properties
    var labelText: String
    var labelImage: String
    
    //MARK:- Body
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}


//MARK:- Preview
struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "FRUCTUS", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

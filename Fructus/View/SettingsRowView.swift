//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Pratyush  on 5/4/21.
//

import SwiftUI

struct SettingsRowView: View {
    //MARK:- Properties
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestnation: String? = nil
    //MARK:- Body
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if content != nil {
                    Text(content!)
                } else if linkLabel != nil && linkDestnation != nil {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestnation!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

//MARK:- Preview
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", content: "John / Jane")
                .previewLayout(.fixed(width: 375, height: 60.0))
                .padding()
            
            SettingsRowView(name: "Developer", content: nil)
                .previewLayout(.fixed(width: 375, height: 60.0))
                .padding()
            
            SettingsRowView(name: "Website", linkLabel:"SwuftUI Master Class", linkDestnation: "swiftUIMaster.com")
                .previewLayout(.fixed(width: 375, height: 60.0))
                .padding()
        }
        
        
    }
}

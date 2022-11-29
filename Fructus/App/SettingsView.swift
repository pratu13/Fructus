//
//  SettingsView.swift
//  Fructus
//
//  Created by Pratyush  on 5/4/21.
//

import SwiftUI

struct SettingsView: View {
    //MARK:- Properties
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    //MARK:- Body
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20.0) {
                    
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "fructus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9.0)
                            
                            Text("Most fruits are natuarally low in fat, sodium, and calories. None has cholestrol. Fruits are a source of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .multilineTextAlignment(.leading)
                                .font(.footnote)
                        }
                    }
                    .padding(.horizontal)
                    
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "customization", labelImage: "paintbrush")
                    ) {
                        Divider().padding(.vertical, 4)
                        Text("If you wish, you could restart the application by toogle the switch in this box. That way iy starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60.0)
                            .layoutPriority(1)
                            .multilineTextAlignment(.leading)
                            .font(.footnote)
                        
                        
                        Toggle(isOn: $isOnboarding) {
                            Text((isOnboarding ? "Restarted" : "Restart").uppercased())
                                .fontWeight(.bold)
                                .foregroundColor(isOnboarding ? Color.green : Color.secondary)
                        }
                        .padding()
                        .background(Color(UIColor.tertiarySystemBackground).clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous)))
                    }
                    .padding(.horizontal)
                    
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "application", labelImage: "iphone")
                    ) {
                        
                        SettingsRowView(name: "Developer", content: "John / Jane")
                        SettingsRowView(name: "Designer", content: "Robert Petras")
                        SettingsRowView(name: "Compatibiblty", content: "iOS 14")
                        SettingsRowView(name: "Website", linkLabel: "SwiftUI MasterClass", linkDestnation: "swiftuimasterclass.com")
                        SettingsRowView(name: "Twitter", linkLabel: "@RobertPetras", linkDestnation: "twitter.com/robertpetras")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                    }
                    .padding(.horizontal)
                }
                
                
            }
            .navigationBarItems(trailing:Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Image(systemName: "xmark")
            })
            .navigationTitle("Settings")
        }
    }
}


//MARK:- Preview
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsView()
                .preferredColorScheme(.dark)
            SettingsView()
        }
    }
}

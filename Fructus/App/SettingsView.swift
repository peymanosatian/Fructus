//
//  SettingsView.swift
//  Fructus
//
//  Created by Peyman Osatian on 2024-04-14.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
    @AppStorage ("isOnboarding") var isOnboarding : Bool = false
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical,showsIndicators: false){
                VStack (spacing:20){
                    // MARK: SECTION1
                    GroupBox(
                        label :
                          SettingsLableView(labelText: "Fructus", labelImage: "info.circle")
                    ){
                        Divider().padding(.vertical,4)
                        HStack (alignment : .center, spacing: 10){
                            Image("logo")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and calories.none have chlosterol.fruits are sources of many essential nutrients, including potassium, dietary fiber , vitamins and much more")
                                .font(.footnote)
                        }
                        
                      
                    }
                    // MARK: SECTION2
                    GroupBox(
                        label:
                            SettingsLableView(labelText: "Customization", labelImage: "paintbrush")){
                                Divider().padding(.vertical,4)
                                Text("If you wish, you can restart the application  by the toggle the switch in this box.That way it starts the onboarding process and you will see the welcome screens again.")
                                    .padding(.vertical,8)
                                    .frame(minHeight: 60)
                                    .layoutPriority(1)
                                    .font(.footnote)
                                    .multilineTextAlignment(.leading)
                                Toggle(isOn: $isOnboarding){
                                    if isOnboarding {
                                        Text("Restarted".uppercased())
                                            .fontWeight(.bold)
                                            .foregroundColor(Color.green)
                                    } else {
                                        Text("Restart".uppercased())
                                            .fontWeight(.bold)
                                            .foregroundColor(Color.secondary)
                                    }
                                }
                                .padding()
                                .background(
                                    Color(UIColor.tertiarySystemBackground)
                                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                                    
                                )
                            }
                    
                    // MARK: SECTION 3
                    GroupBox(
                        label:SettingsLableView(labelText: "Application", labelImage: "apps.iphone")
                    ){
                        
                        SettingsRowView(name: "Developer", content: "John / jan")
                        SettingsRowView(name:"Designer" , content: "Robert")
                        SettingsRowView(name: "Compatibility" , content: "iOS17")
                        SettingsRowView(name: "Website", LinkLabel: "Swiftui tutorial", LinkDestination: "swiftuimasterclass.com")
                        SettingsRowView(name: "Twitter", LinkLabel: "@Peyman", LinkDestination: "twitter.com")
                        SettingsRowView(name: "Swiftui" , content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                    }// GROUPBOX
                   
                } //: VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                trailing:
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }){
                        Image(systemName: "xmark")
                    }
                )
                .padding()
            }//: SCROLL
        }//: NAVIGATION
    }
}

#Preview {
    SettingsView()
}

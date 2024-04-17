//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Peyman Osatian on 2024-04-17.
//

import SwiftUI

struct SettingsRowView: View {
    var name: String
    var content : String? = nil
    var LinkLabel : String? = nil
    var LinkDestination : String? = nil
    
    
    var body: some View {
        VStack {
            Divider().padding(.vertical,4)
            HStack{
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (LinkLabel != nil && LinkDestination != nil ){
                    Link(LinkLabel!, destination: URL(string: "https://\(LinkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }
                else {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
            }
        }
    }
}

#Preview {
    Group{
        SettingsRowView(name: "Developer", content: "John / Jane")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
        SettingsRowView(name: "Website", LinkLabel: "Swiftui", LinkDestination: "swiftuimasterclass.com")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
    
}

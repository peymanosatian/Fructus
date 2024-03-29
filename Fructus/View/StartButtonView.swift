//
//  StartButtonView.swift
//  Fructus
//
//  Created by Peyman Osatian on 2024-03-27.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: - PROPERTIES
    
    
    //MARK: BODY
    var body: some View {
        Button(action: {
            print("exit the onboarding")
        }){
            HStack (spacing:8 ) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10 )
            .background(
                Capsule().strokeBorder(Color.white,lineWidth: 1.25))
        } //: BUTTON
        .accentColor(Color.white)
    }
        
}
//MARK: - PREVIEW
#Preview {
    StartButtonView()
        .previewLayout(.sizeThatFits)
}

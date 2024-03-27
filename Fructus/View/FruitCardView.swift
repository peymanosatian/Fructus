//
//  FruitCardView.swift
//  Fructus
//
//  Created by Peyman Osatian on 2024-03-27.
//

import SwiftUI

struct FruitCardView: View {
    // MARK: - PROPERTIES
    
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            VStack (spacing : 20){
                // FRUIT: IMAGE
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red:0,green:0,blue: 0,opacity: 0.15),radius: 8,x:6,y:8)
                // FRUIT: TITLE
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red:0, green: 0, blue: 0, opacity: 0.15), radius: 2,x:2,y: 2)
                // FRUIT: HEADLINE
                Text("Bluberries are sweet, nutritious and widely popular fuit in all the world.")
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,16)
                    .frame(maxWidth: 480)
                
                // BUTTON: START
                StartButtonView()
            } //: VSTACK
        } // : ZSTACK
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment:.center)
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueBerryLight"), Color("ColorBlueBerryDark")]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
    }
}
 // MARK: - PREVIEW
#Preview {
    FruitCardView()
       
}

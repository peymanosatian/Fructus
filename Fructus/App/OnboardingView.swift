//
//  OnboardingView.swift
//  Fructus
//
//  Created by Peyman Osatian on 2024-03-27.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    
    //MARK: BODY
    var body: some View {
        TabView{
            ForEach(fruits[0...3]) { item in
                FruitCardView(fruit: item)
                
            }//: LOOP
        }//: TABVIEW
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}
//MARK: -PREVIEW
#Preview {
    OnboardingView(fruits: fruitsData)
}

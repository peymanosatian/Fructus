//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Peyman Osatian on 2024-04-11.
//

import SwiftUI

struct FruitDetailView: View {
    var fruit : Fruit
    
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical,showsIndicators: false){
                VStack (alignment:.center, spacing: 20){
                    
                    //: HEADER
                    FruitHeaderView(fruit: fruit)
                    VStack (alignment : .leading, spacing: 20) {
                        //: TITLE
                       
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gardientColor[1])
                        //: HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //: NUTRINS
                        FruitNutrientview(fruit: fruit)
                        //:SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gardientColor[1])
                        
                        //:DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        //: LINK
                       SourceLinkView()
                            .padding(.top,10)
                            .padding(.bottom,40)
                        
                    } //: VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                } //: VSTACK
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            } // : SCROLL
            .edgesIgnoringSafeArea(.top)
        }// : NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
        //ipad responsive
    }
}

#Preview {
    FruitDetailView(fruit: fruitsData[0])
}

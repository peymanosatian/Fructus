//
//  FruitNutrientview.swift
//  Fructus
//
//  Created by Peyman Osatian on 2024-04-13.
//

import SwiftUI

struct FruitNutrientview: View {
    var fruit : Fruit
    var nutrients: [String] = ["Energy","Sugar","Fat","Protein","Vitamins","Minerals"]
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutritional value per 100g"){
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical,3)
                    HStack {
                        Group {
                            Image (systemName:"info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(.blue)
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        Text(fruit.nutriotion[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
          
        }
      
    }
}

#Preview {
    FruitNutrientview(fruit: fruitsData[0])
        .previewLayout(.fixed(width: 375, height: 480))
        .padding()
}

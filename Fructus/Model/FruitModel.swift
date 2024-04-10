//
//  FruitModel.swift
//  Fructus
//
//  Created by Peyman Osatian on 2024-04-03.
//

import SwiftUI

// MARK: -  FRUITS DATA MODEL

struct Fruit : Identifiable {
    var id = UUID()
    var title : String
    var image : String
    var description : String
    var headline: String
    var gardientColor : [Color]
    var nutriotion : [String]
}

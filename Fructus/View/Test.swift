//
//  Test.swift
//  Fructus
//
//  Created by Peyman Osatian on 2024-04-14.
//

import SwiftUI

struct Test: View {
    @State private var name = ""
    var body: some View {
        Form{
            TextField("enter your name", text: $name)
            Text("Hello")
        }
    }
}

#Preview {
    Test()
}

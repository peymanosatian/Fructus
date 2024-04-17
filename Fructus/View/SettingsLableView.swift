//
//  SettingsLableView.swift
//  Fructus
//
//  Created by Peyman Osatian on 2024-04-14.
//

import SwiftUI

struct SettingsLableView: View {
    var labelText :String
    var labelImage : String
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
                Spacer()
            Image(systemName: labelImage)
        }
    }
}

#Preview {
    SettingsLableView(labelText: "Fructus", labelImage: "info.circle")
}

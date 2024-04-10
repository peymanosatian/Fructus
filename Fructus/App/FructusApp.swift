//
//  FructusApp.swift
//  Fructus
//
//  Created by Peyman Osatian on 2024-03-18.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage ("isOnboarding") var isOnboarding : Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView ()
            }
        }
    }
}

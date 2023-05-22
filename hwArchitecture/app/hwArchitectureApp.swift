//
//  hwArchitectureApp.swift
//  hwArchitecture
//
//  Created by Alexandra Kurganova on 22.05.2023.
//

import SwiftUI

@main
struct hwArchitectureApp: App {
    init() {
        Configurator.shared.setup()
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(LaureatesViewModel())
                .environmentObject(NobelPrizeViewModel())
                .environmentObject(SegmentedViewModel())
                .environmentObject(NavigationViewModel(easing: .default))
        }
    }
}

//
//  NavigationStack.swift
//  hwServiceLocator
//
//  Created by Sasha Kurganova on 22.05.2023.
//

import Foundation

struct NavigationStack {
    var screens: [Screen] = []

    func top() -> Screen? {
        screens.last
    }

    mutating func push(newScreen: Screen) {
        screens.append(newScreen)
    }

    mutating func popPrev() {
        _ = screens.popLast ()
    }

    mutating func popToRoot() {
        screens.removeAll()
    }
}

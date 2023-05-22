//
//  LaureateBasicDataSource.swift
//  hwServiceLocator
//
//  Created by Sasha Kurganova on 22.05.2023.
//

import SwiftUI
import Network

final class LaureateBasicDataSource {
    fileprivate let unknown = "unknown"

    let name: String

    init(laureate: LaureateBasic) {
        name = laureate.name?.en ?? unknown
    }
}

extension LaureateBasicDataSource: Identifiable { }


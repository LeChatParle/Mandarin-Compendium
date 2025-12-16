//
//  Item.swift
//  Mandarin Compendium
//
//  Created by 范康 on 2025-12-16.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}

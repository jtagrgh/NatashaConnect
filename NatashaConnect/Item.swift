//
//  Item.swift
//  NatashaConnect
//
//  Created by jakob koblinsky on 2024-10-16.
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

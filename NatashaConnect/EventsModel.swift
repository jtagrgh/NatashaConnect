//
//  EventsModel.swift
//  NatashaConnect
//
//  Created by jakob koblinsky on 2024-10-17.
//

import Foundation

struct EventsModel {
    public let allEvents: [Event]
    public var allTokens: [StringToken]
    
    init(allEvents: [Event]) {
        self.allEvents = allEvents
        self.allTokens = []
        
        for event in allEvents {
            for filter in event.filters {
                allTokens.append(StringToken(name: filter))
            }
        }
    }
    
}

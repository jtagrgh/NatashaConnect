//
//  EventsViewModel.swift
//  NatashaConnect
//
//  Created by jakob koblinsky on 2024-10-17.
//

import Foundation

class EventsViewModel: ObservableObject {
    private let eventsModel: EventsModel
    
    @Published public var searchText: String
    @Published public var searchTokens: [StringToken]
    @Published public var suggestedTokens: [StringToken]
        
    public var filteredEvents: [Event] {
        var events = self.eventsModel.allEvents
        if !searchText.isEmpty {
            events = events.filter { $0.filters.description.localizedCaseInsensitiveContains(searchText) }
        }
        if searchTokens.count > 0 {
            let tokens: [String] = searchTokens.map { $0.name }
            let tokenSet = Set(tokens)
            events = events.filter { tokenSet.isSubset(of: Set($0.filters)) }
        }
        return events
    }
    
    init(eventsModel: EventsModel) {
        self.eventsModel = eventsModel
        self.suggestedTokens = eventsModel.allTokens
        self.searchText = ""
        self.searchTokens = []
    }
}

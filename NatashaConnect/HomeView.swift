//
//  HomeView.swift
//  NatashaConnect
//
//  Created by jakob koblinsky on 2024-10-16.
//

import SwiftUI
import Combine

struct HomeView: View {
    @StateObject public var viewModel: EventsViewModel
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.filteredEvents) { event in
                    NavigationLink {
                        EventDetailView(event: event)
                            .navigationBarTitleDisplayMode(.inline)
                    } label: {
                        EventItemView(event: event)
                            .frame(height: 150)
                    }
                    .listRowSeparator(.hidden, edges: .all)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Events")
            .searchable(text: $viewModel.searchText, tokens: $viewModel.searchTokens, suggestedTokens: $viewModel.suggestedTokens, token: { Text($0.name) })
        }
    }
}

#Preview {
    HomeView(viewModel: EventsViewModel(
        eventsModel: EventsModel(allEvents: Event.exampleEvents)
    ))
}

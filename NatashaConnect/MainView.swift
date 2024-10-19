//
//  MainView.swift
//  NatashaConnect
//
//  Created by jakob koblinsky on 2024-10-16.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            HomeView(viewModel: EventsViewModel(eventsModel: EventsModel(allEvents: Event.exampleEvents)))
                .tabItem {
                    Image(systemName: "house")
                }

            Text("Calender View")
                .tabItem {
                    Image(systemName: "calendar")
                }
            
            MessagesView(messages: MessageCardModel.examples)
                .tabItem {
                    Image(systemName: "message")
                }
                        
            Text("Notification View")
                .tabItem {
                    Image(systemName: "bell")
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person.circle")
                }
        }
    }
}

#Preview {
    MainView()
}

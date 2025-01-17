//
//  NatashaConnectApp.swift
//  NatashaConnect
//
//  Created by jakob koblinsky on 2024-10-16.
//

import SwiftUI
import SwiftData

@main
struct NatashaConnectApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            IntroView()
        }
        .modelContainer(sharedModelContainer)
    }
}

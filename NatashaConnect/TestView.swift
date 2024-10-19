//
//  TestView.swift
//  NatashaConnect
//
//  Created by jakob koblinsky on 2024-10-16.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        NavigationStack {
            Text("Hello, World!").padding()
                .navigationTitle("SwiftUI")
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button("Press Me") {
                            print("Pressed")
                        }
                    }
                }
        }
    }
}

#Preview {
    TestView()
}

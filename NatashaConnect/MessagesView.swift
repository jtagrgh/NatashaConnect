//
//  MessagesView.swift
//  NatashaConnect
//
//  Created by jakob koblinsky on 2024-10-17.
//

import SwiftUI

struct MessagesView: View {
    let messages: [MessageCardModel]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(messages) { message in
                    NavigationLink {
                        Text("Chat history")
                    } label: {
                        MessageCardView(dataModel: message)
                    }
                    .listRowSeparator(.hidden, edges: .all)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Messages")
        }
    }
}

#Preview {
    MessagesView(messages: MessageCardModel.examples)
}

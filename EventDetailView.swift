//
//  EventDetailView.swift
//  NatashaConnect
//
//  Created by jakob koblinsky on 2024-10-17.
//

import SwiftUI

struct EventDetailView: View {
    let event: Event
    @State var joined = false
    
    var body: some View {
        VStack(spacing: 0) {
            EventDetailItemView(event: event)
                .padding([.horizontal, .bottom])
                            
            Divider()
            
            Text("Created by:")
                .fontDesign(.serif)
                .font(.title2)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 50)
                .padding(.vertical, 5)
            
            EventProfileView(user: event.creatorUser)
                .padding(.horizontal, 70)
            
            Divider()
            
            Text("Attending:")
                .fontDesign(.serif)
                .font(.title2)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 10)

            AttendeeCardView(event: event)
                .padding(.horizontal)
            
            Button {
                joined.toggle()
            } label: {
                Text(joined ? "Joined" : "Join")
                    .foregroundStyle(.black)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 50)
                    .background(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .stroke(lineWidth: 1)
                        .fill(Color(.gray)))
            }
            .padding(.vertical, 10)
        }
        .toolbar(.hidden, for: .tabBar)
        .navigationTitle("Event Details")
        
    }
}

#Preview {
    TabView {
        NavigationStack {
            NavigationLink {
                EventDetailView(event: Event.keegan)
            } label: {
                Text("Event")
            }
        }
    }
}

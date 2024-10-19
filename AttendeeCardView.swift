//
//  AttendeeCardView.swift
//  NatashaConnect
//
//  Created by jakob koblinsky on 2024-10-17.
//

import SwiftUI

struct AttendeeCardView: View {
    let event: Event
    
    var body: some View {
        GroupBox {
            HStack(alignment: .center, spacing: 30) {
                if event.attendeeUsers.count > 0 {
                    ProfileAndNameView(user: event.attendeeUsers[0])
                        .frame(width: 75)
                } else {
                    Text("None")
                }
                
                if event.attendeeUsers.count > 1 {
                    ProfileAndNameView(user: event.attendeeUsers[1])
                        .frame(width: 75)
                }
                
                if event.attendeeUsers.count > 1 {
                    Text("...")
                        .font(.title)
                }
            }
            .padding()
//            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        }
        .groupBoxStyle(CardGroupBoxStyle())
    }
}

#Preview {
    AttendeeCardView(event: Event.jakob)
        .frame(height: 150)
        .background(.green)
}

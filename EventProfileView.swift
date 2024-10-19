//
//  EventProfileView.swift
//  NatashaConnect
//
//  Created by jakob koblinsky on 2024-10-17.
//

import SwiftUI

struct EventProfileView: View {
    let user: User
    
    var body: some View {
        VStack(spacing: 0) {
            
            ProfileAndNameView(user: user)
                .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .padding(.bottom)
            
            HStack {
                Text(user.sex)
                    .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                Text(String(user.age))
                    .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                Spacer()
                ForEach(user.languages, id: \.self) { language in
                    Text(language)
                        .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                }
            }
            
            Text(user.bio)
                .frame(height: 50)
        }
//        .frame(height: 200)
    }
}

#Preview {
    EventProfileView(user: User.harriette)
//        .frame(height: 200)
//        .background(.green)
}

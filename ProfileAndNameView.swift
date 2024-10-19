//
//  ProfileAndNameView.swift
//  NatashaConnect
//
//  Created by jakob koblinsky on 2024-10-17.
//

import SwiftUI

struct ProfileAndNameView: View {
    let user: User
    
    var body: some View {
        VStack {
            Image(user.profileImageName)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .padding(3)
                .background(Circle().fill(Color(red: 225/255, green: 145/255, blue: 19/255)))
            
            Text(user.userName)
                .font(.caption)
                .fontDesign(.serif)
                .lineLimit(1)
        }
        .frame(minWidth: 75)

    }
}

#Preview {
    ProfileAndNameView(user: User.harriette)
}

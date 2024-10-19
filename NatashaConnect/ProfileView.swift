//
//  ProfileView.swift
//  NatashaConnect
//
//  Created by jakob koblinsky on 2024-10-18.
//

import SwiftUI

struct ProfileView: View {
    let user: User = User.jakob
    
    var body: some View {
        NavigationStack {
            VStack {
                
                Image(user.profileImageName)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .padding(1)
                    .background(Circle().fill(.black))
                    .frame(maxWidth: 150)
//                    .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                
                Text(user.userName)
                    .font(.headline)
                    .fontWeight(.bold)
                    .fontDesign(.serif)
                    .lineLimit(1)
                
                HStack {
                    Text(user.sex.uppercased())
                    Text(String(user.age).uppercased())
                    Spacer()
                    ForEach(user.languages, id: \.self) {
                        Text($0.uppercased())
                    }
                }
                .padding(.horizontal)
                
                Text(user.bio)
                    .frame(maxHeight: 100)
                    .padding(.horizontal)
                                
                HStack (spacing: 50) {
                    VStack {
                        Text(String(user.connections))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Text("connections")
                    }
                    VStack {
                        Text(String(user.activities))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Text("activities")
                    }
                }
                .padding(0)
                
                Spacer()
                
                Text("Created (and/or attending):")
                    .font(.caption)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    .padding(.horizontal)
                
                EventItemView(event: Event.jakob)
                    .padding(.horizontal)
                    .frame(maxHeight: 200)
//                    .padding(.bottom, 40)
                
                Spacer()
                
            }
            .toolbar {
                ToolbarItemGroup(placement: .topBarTrailing) {
                    NavigationLink {
                        Text("User Settings")
                    } label: {
                        Image(systemName: "gear")
                    }
                }
            }
            .navigationTitle("Profile")
        }
    }
}

#Preview {
    TabView {
        ProfileView()
            .tabItem {
                Image(systemName: "person.circle")
            }
    }
}

//
//  IntroView.swift
//  NatashaConnect
//
//  Created by jakob koblinsky on 2024-10-18.
//

import SwiftUI

struct IntroView: View {
    @State var signedIn = false
    @State var joined = false
    
    var body: some View {
        if signedIn {
            SignInView()
        }
        else if joined {
            SignUpView()
                .transition(.move(edge: .bottom))
        } else {
            VStack {
                Spacer()
                
                Text("Welcome to")
                    .font(.title)
                
                Text("Connect")
                    .font(.system(size: 60, design: .serif))
                    .fontWeight(.bold)
                
                Text("🤝")
                    .font(.system(size: 150))
                    .background(Circle()
                        .stroke(Constants.foregroundYellow, lineWidth: 5))
                
                Spacer()
                
                Button {
                    withAnimation(.default) {
                        signedIn.toggle()
                    }
                } label: {
                    Text("Sign In")
                        .foregroundStyle(Color(.black))
                        .font(.system(size: 20))
                        .padding(.vertical, 13)
                        .padding(.horizontal, 38)
                        .background(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                            .fill(.white)
                            .stroke(Color(.lightGray), lineWidth: 1.5))
                }
                
                HStack {
                    Text("Not a member?")
                    Button {
                        withAnimation {
                            joined.toggle()
                        }
                    } label: {
                        Text("Join!")
                    }
                }
                .padding(.vertical)
                
                
            }
        }
    }
}

#Preview {
    IntroView()
}

//
//  SignInView.swift
//  NatashaConnect
//
//  Created by jakob koblinsky on 2024-10-16.
//

import SwiftUI

struct SignInView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var signedIn = false

    var body: some View {
        if signedIn {
            MainView()
        } else {
            VStack {
                Spacer()
                
                Text("Sign In")
                    .font(.system(size: 60, design: .serif))
                
                InputTextView(label: "Email")
                    .padding()
                    .padding(.horizontal)
                    .padding(.vertical, 10)
                
                InputTextView(label: "Password")
                    .padding()
                    .padding(.horizontal)
                    .padding(.vertical, 10)
                
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
                    Text("Forgot password?")
                    Button {
                        //
                    } label: {
                        Text("Tap here.")
                    }
                }
                .padding(.vertical)
            }
            .background(Constants.foregroundYellow)
        }
    }
}

#Preview {
    SignInView()
}

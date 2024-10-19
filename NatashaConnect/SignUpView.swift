//
//  SignUpView.swift
//  NatashaConnect
//
//  Created by jakob koblinsky on 2024-10-18.
//

import SwiftUI
import PhotosUI

struct SignUpView: View {
    @State var pfpItem: PhotosPickerItem?
    @State var pfpImage: Image?
    @State var signedUp = false
    @State var signIn = false
    
    var body: some View {
        if signIn {
            SignInView()
                .transition(.move(edge: .top))
        } else {
            VStack(spacing: 8) {
                VStack (alignment: .leading) {
                    Text("Let's get")
                        .font(.system(size: 34))
                        .fontDesign(.serif)
                    Text("you connected!")
                        .font(.system(size: 34))
                        .fontDesign(.serif)
                        .padding(.leading, 50)
                }
                
                Spacer()
                
                HStack {
                    InputTextView(label: "First Name")
                        .padding(.trailing)
                    InputTextView(label: "Last Name")
                        .padding(.leading)
                }
                
                HStack {
                    InputTextView(label: "Date of Birth")
                        .padding(.trailing)
                    HStack {
                        InputTextView(label: "Age")
                            .padding(.leading)
                        InputTextView(label: "Sex")
                            .padding(.leading)
                    }
                }
                
                InputTextView(label: "Email")
                
                InputTextView(label: "Languages")
                
                HStack {
                    PhotosPicker("Image Upload", selection: $pfpItem, matching: .images)
                    
                    if pfpImage != nil {
                        pfpImage?
                            .resizable()
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .frame(width: 75, height: 75)
                    } else {
                        Circle()
                            .fill(.white)
                            .stroke(Color(.lightGray), lineWidth: 1.5)
                            .frame(width: 75, height: 75)
                    }
                }
                .padding(.top, 5)
                
                Text("*A live image with ID is required to ensure safety for our users. Read more")
                    .font(.caption)
                
                Spacer()
                
                Button {
                    withAnimation(.default) {
                        signedUp.toggle()
                    }
                } label: {
                    Text("Sign Up")
                        .foregroundStyle(Color(.black))
                        .font(.system(size: 20))
                        .padding(.vertical, 13)
                        .padding(.horizontal, 38)
                        .background(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                            .fill(.white)
                            .stroke(Color(.lightGray), lineWidth: 1.5))
                }
                
                HStack(spacing: 0) {
                    Text("Already connected? ")
                    Button {
                        withAnimation {
                            signIn.toggle()
                        }
                    } label: {
                        Text("Sign in")
                    }
                    Text("!")
                        .foregroundStyle(.black)
                }
                
            }
            .padding(.horizontal, 40)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
            .background(Constants.foregroundYellow)
            .onChange(of: pfpItem) {
                Task {
                    if let loaded = try? await pfpItem?.loadTransferable(type: Image.self) {
                        pfpImage = loaded
                    } else {
                        print("failed")
                    }
                }
            }
        }
    }
}

#Preview {
    SignUpView()
}

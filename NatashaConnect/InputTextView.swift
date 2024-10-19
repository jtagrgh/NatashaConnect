//
//  InputTextView.swift
//  NatashaConnect
//
//  Created by jakob koblinsky on 2024-10-18.
//

import SwiftUI

struct InputTextView: View {
    let label: String
    @State var input: String = ""
    
    var body: some View {
        VStack {
            Text(label)
                .padding(.horizontal, 6)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            TextField("", text: $input)
                .padding(.vertical, 12)
                .padding(.horizontal)
                .background(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .stroke(Color(.lightGray), lineWidth: 3)
                    .fill(.white))
        }
    }
}

#Preview {
    InputTextView(label: "Email")
        .background(.red)
}

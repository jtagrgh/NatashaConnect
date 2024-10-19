//
//  ImageCircleView.swift
//  NatashaConnect
//
//  Created by jakob koblinsky on 2024-10-17.
//

import SwiftUI

struct ImageCircleView: View {
    var body: some View {
        .frame()
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .padding(3)
            .background(Circle().fill(Color(red: 225/255, green: 145/255, blue: 19/255)))
    }
}

#Preview {
    ImageCircleView()
}

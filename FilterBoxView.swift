//
//  FilterBoxView.swift
//  NatashaConnect
//
//  Created by jakob koblinsky on 2024-10-17.
//

import SwiftUI

struct FilterBoxView: View {
    let filter: String
    
    var body: some View {
        Text(filter)
            .font(.system(size: 14))
            .padding(5)
//            .frame(maxWidth: .infinity)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(Color.RGBColorSpace.sRGB, red: 249/255, green: 242/255, blue: 205/255))
                    .stroke(Color(.gray), lineWidth: 1)
            )

    }
}

#Preview {
    FilterBoxView(filter: "male")
}

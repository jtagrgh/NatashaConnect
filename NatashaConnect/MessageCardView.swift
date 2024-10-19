//
//  MessageCardView.swift
//  NatashaConnect
//
//  Created by jakob koblinsky on 2024-10-17.
//

import SwiftUI

struct MessageCardView: View {
    let dataModel: MessageCardModel
    
    var body: some View {
        GroupBox {
            HStack(alignment: .top, spacing: 5) {
                Image(dataModel.event.thumbnailImage)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .padding(5)
                    .background(Circle().fill(Color(red: 225/255, green: 145/255, blue: 19/255)))
                    .overlay(
                        Circle()
                            .fill(.red)
                            .strokeBorder(.black, lineWidth: 1.5)
                            .frame(width: 25, height: 25)
                            .opacity(dataModel.newMessage ? 1 : 0),
                        alignment: .topLeading
                    )
                
                Spacer()
                
                VStack(alignment: .leading) {
                    Text(dataModel.event.activityName)
                        .font(.headline)
                    Text(dataModel.lastMessage)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
//                .padding(.leading, 10)
//                .background(.red)
                
                Spacer()
                
                Text(dataModel.messageDateString)
            }
            .padding()
            .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
        }
        .groupBoxStyle(CardGroupBoxStyle())
    }
    
}

#Preview {
    MessageCardView(dataModel: MessageCardModel.examples[0])
}

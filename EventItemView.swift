//
//  EventItemView.swift
//  NatashaConnect
//
//  Created by jakob koblinsky on 2024-10-16.
//

import SwiftUI

struct EventItemView: View {
    let event: Event
    
    var body: some View {
        GroupBox {
            VStack {
                HStack{
                    Text(event.date, format: .dateTime.month(.wide).day().hour().minute())
                        .padding(.horizontal)
                    Spacer()
                    HStack {
                        Image(systemName: "mappin.circle")
                        Text("2km")
                    }
                    .padding(.horizontal)
                }
//                .background(.blue)
                
                HStack {
                    Image(event.thumbnailImage)
                        .resizable()
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .frame(width: 75)
//                        .background(.cyan)
                    
                    Spacer()
                    
                    VStack(alignment: .center) {
                        Text("Created by:")
                            .font(.caption)
                        HStack {
                            Image(event.creatorUser.profileImageName)
                                .resizable()
                                .scaledToFit()
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                .background(Circle().stroke(lineWidth: 5).fill(Color(.lightGray)))
                                .frame(width: 50, height: 50)
                            VStack {
                                Text(event.creatorUser.userName)
//                                    .minimumScaleFactor(0.5)
                                    .lineLimit(1)
                                    .frame(width: 100)
                                Text(String(event.creatorUser.age))
                                    .minimumScaleFactor(0.5)
                                    .lineLimit(1)
                            }
//                            .frame(maxWidth: .infinity)
                        }
                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
//                    .background(.green)
                    
                    Spacer()

                    VStack(spacing: 0) {
                        ForEach(event.filters.prefix(2), id: \.self) { filter in
                            FilterBoxView(filter: filter)
                                .padding(.bottom, 4)
                        }
                        if event.filters.count > 2 {
                            Text("+")
                                .font(.caption)
                        }
                    }
//                    .background(.red)
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                
            }
            .padding()
        }
        .groupBoxStyle(CardGroupBoxStyle())
    }
}

#Preview {
    EventItemView(event: Event.harriette)
        .frame(height: 100)
        .background(.red)
}

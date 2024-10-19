//
//  EventDetailItemView.swift
//  NatashaConnect
//
//  Created by jakob koblinsky on 2024-10-17.
//

import SwiftUI

struct EventDetailItemView: View {
    let event: Event
    var firstFourTags: [String] { Array(event.filters.prefix(4)) }
    
    var body: some View {
        GroupBox {
            VStack {
                Text(event.date, format: .dateTime.month(.wide).day().hour().minute())
                    .padding(.horizontal)
                
                HStack {
                    Image(event.thumbnailImage)
                        .resizable()
                        .scaledToFit()
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    
                    VStack {
                        HStack {
                            Image(systemName: "mappin.circle")
                            Text(event.location)
                        }
                        .padding(.bottom)
                        Grid {
                            GridRow {
                                if firstFourTags.count > 0 {
                                    FilterBoxView(filter: firstFourTags[0])
                                }
                                if firstFourTags.count > 1 {
                                    FilterBoxView(filter: firstFourTags[1])
                                }
                            }
                            GridRow {
                                if firstFourTags.count > 2 {
                                    FilterBoxView(filter: firstFourTags[2])
                                } 
                                if firstFourTags.count > 3 {
                                    FilterBoxView(filter: firstFourTags[3])
                                }
                            }
                        }
                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            }
            .padding()
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        }
        .groupBoxStyle(CardGroupBoxStyle())
        .frame(maxHeight: 200)
    }
}

#Preview {
    EventDetailItemView(event: Event.jakob)
}

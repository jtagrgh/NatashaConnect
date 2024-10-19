//
//  MessageCardModel.swift
//  NatashaConnect
//
//  Created by jakob koblinsky on 2024-10-18.
//

import Foundation

struct MessageCardModel: Identifiable {
    let id: UUID = UUID()
    let event: Event
    let lastMessage: String
    let newMessage: Bool
    let lastMessageDate: Date
    var messageDateString: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM d"
        return formatter.string(from: lastMessageDate)
    }
    
    static let examples: [MessageCardModel] = [
        MessageCardModel(event: Event.jakob, lastMessage: "Can't wait to meet all of you? I'm doing something blah blah", newMessage: true, lastMessageDate: Date()),
        MessageCardModel(event: Event.harriette, lastMessage: "Text of what the last messag was", newMessage: true, lastMessageDate: Date()),
        MessageCardModel(event: Event.blankEvent, lastMessage: "That, sounds like a great idea!", newMessage: false, lastMessageDate: Date()),
        MessageCardModel(event: Event.blankEvent, lastMessage: "That, sounds like a great idea!", newMessage: false, lastMessageDate: Date()),
        MessageCardModel(event: Event.blankEvent, lastMessage: "That, sounds like a great idea!", newMessage: false, lastMessageDate: Date()),
        MessageCardModel(event: Event.blankEvent, lastMessage: "That, sounds like a great idea!", newMessage: false, lastMessageDate: Date()),
    ]

}

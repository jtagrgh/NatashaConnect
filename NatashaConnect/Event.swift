//
//  Event.swift
//  NatashaConnect
//
//  Created by jakob koblinsky on 2024-10-16.
//

import Foundation

struct Event: Identifiable {
    var id: UUID
    var date: Date
    var thumbnailImage: String
    var creatorUser: User
    var location: String
    var filters: [String]
    var attendeeUserNames: [String]
    var attendeeUsers: [User]
    var activityName: String
    
    static let jakob = Event(id: UUID(), date: Date(), thumbnailImage: "crockadoodle", creatorUser: User.jakob, location: "4th Street", filters: ["Student", "English", "4 People"], attendeeUserNames: ["Harriette", "Natasha"], attendeeUsers: [User.jakob, User.harriette], activityName: "Crock A Doodle")
    
    static let harriette = Event(id: UUID(), date: Date(), thumbnailImage: "banana_republic", creatorUser: User.harriette, location: "Eaton Centre", filters: ["Female", "Short"], attendeeUserNames: ["Jakob"], attendeeUsers: [User.harriette], activityName: "Holiday Shpping")
    
    static let keegan = Event(id: UUID(), date: Date(), thumbnailImage: "thedocks", creatorUser: User.keegan, location: "The Docks", filters: ["Golfers"], attendeeUserNames: [""], attendeeUsers: [User.jakob, User.harriette], activityName: "The Docks Driving Range")
    
    static let blankEvent = Event(id: UUID(), date: Date(timeIntervalSince1970: TimeInterval()), thumbnailImage: "Turntable", creatorUser: User.blankUser, location: "Nowhere", filters: ["Relaxed", "Casual"], attendeeUserNames: [], attendeeUsers: [User.jakob, User.harriette], activityName: "Do something new")
    
    static let exampleEvents = [jakob, harriette, keegan, blankEvent]
}

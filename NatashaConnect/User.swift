//
//  User.swift
//  NatashaConnect
//
//  Created by jakob koblinsky on 2024-10-16.
//

import Foundation

struct User {
    var userName: String
    var sex: String
    var languages: [String]
    var bio: String
    var age: Int
    var profileImageName: String
    var connections: Int = 4
    var activities: Int = 1
    
    static let jakob = User(userName: "Jakob Koblinsky", sex: "Male", languages: ["English"], bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vitae elementum ante. Praesent rutrum pharetra erat consequat eleifend. Sed porttitor.", age: 22, profileImageName: "penguin")
    
    static let harriette = User(userName: "Harriette Hollihn", sex: "Female", languages: ["English", "British"], bio: "A girl.", age: 28, profileImageName: "gingerbread_man")
    
    static let keegan = User(userName: "Keegan Heayn", sex: "Male", languages: ["French"], bio: "A cool and chill guy.", age: 22, profileImageName: "gball")
    
    static let blankUser = User(userName: "defaultName", sex: "Male", languages: ["German"], bio: "Ein ist dein", age: 25, profileImageName: "lotus")
}

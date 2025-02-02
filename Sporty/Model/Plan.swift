//
//  Plan.swift
//  Sporty
//
//  Created by Jessica Trans on 1/30/25.
//

import Foundation
import SwiftUI

struct Plan: Identifiable {
    let id = UUID().uuidString
    let sport: String
    let level: String
    let time: String
    let title: String
    let location: String
    let image: Image?   // make image optional
    let joined: Bool    // if joined then "View chat", else "Request"
    // image
    // let mutual_friends: String???
//    let mutual_friends: Array
}

// mock data
let plans = [
    Plan(sport: "Basketball",
         level: "Intermediate",
         time: "WED, DEC 10, 12:00 - 12:00 PM PDT",
         title: "5v5 Basketball game at ucd gym!",
         location: "Arc and Recreational Center",
         image: Image(.basketball),
         joined: true),
    Plan(sport: "Volleyball",
         level: "Beginner",
         time: "SAT, DEC 14, 7:30 AM PDT",
         title: "Weekend Volleyball Practice",
         location: "Beach Volleyball Courts, Davis, CA, 95616",
         image: nil,
         joined: false),
    Plan(sport: "Table Tennis",
         level: "All levels",
         time: "SUN, DEC 15, 10:00 - 1:00 PM PDT",
         title: "Table tennis on Campus!",
         location: "Davis, CA",
         image: nil,
         joined: false)
]

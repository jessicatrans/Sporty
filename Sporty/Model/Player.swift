//
//  Player.swift
//  Sporty
//
//  Created by Jessica Trans on 2/1/25.
//

import Foundation

struct Player: Identifiable {
    let id = UUID().uuidString
    let first_name: String
    let age: Int
    let location: String
    let sport_interest: [String]
    let bio: String
}

let players = [
    Player(first_name: "Charles",
            age: 27,
            location: "Davis, CA",
            sport_interest: ["soccer", "basketball", "tennis", "baseball", "frisbee"],
            bio: "Let me know if anyone is down to start a soccer club in the Sac area!"
           ),
    Player(first_name: "Emily",
            age: 22,
            location: "Davis, CA",
            sport_interest: ["tennis", "volleyball", "basketball"],
            bio: "Hello friends! I'm Emily and I go to school at UC Davis. DM me if you wanna play tennis! All levels are welcomed"
           )
    
]

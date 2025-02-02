//
//  PlayerDetailsView.swift
//  Sporty
//
//  Created by Jessica Trans on 2/1/25.
//

import SwiftUI

struct PlayerDetailsView: View {
    let player: Player
    var body: some View {
        VStack(alignment: .leading) {
            // details + image
            CardPlayerDetailsView(player: player)
            
            // TODO: friends
            MutualFriends()
            
            // buttons
            HStack() {
                AddFriendButton()
                MessageButton()
            }
        }
    }
}

#Preview {
    PlayerDetailsView(player: players[0])
}

struct CardPlayerDetailsView: View {
    let player: Player
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 7) {
                // sport interest
                SportInterest(sport_interest: player.sport_interest)
                
                
                // details
                Text(player.bio)
                    .font(.setCustom(fontStyle: .body))
                    .lineLimit(2)
            }
            .padding(.trailing, 20)
            
            Spacer()
        
        }
    }
}

struct AddFriendButton: View {
    var body: some View {
        Button {
            
        } label: {
            Text("Add Friend")
                .font(.setCustom(fontStyle: .headline, fontWeight: .medium))
        }
        .frame(width: 150, height: 36)
        .background(Color(.systemGray6))
        .cornerRadius(10)
    }
}

struct MessageButton: View {
    var body: some View {
        Button {
            
        } label: {
            Text("Message")
                .font(.setCustom(fontStyle: .headline, fontWeight: .medium))
                .foregroundStyle(Color(.white))
        }
        .frame(width: 150, height: 36)
        .background(Color(.blue))
        .cornerRadius(10)
    }
}

struct SportInterest: View {
    let sport_interest: [String]
    
    init(sport_interest: [String]) {
        self.sport_interest = sport_interest
    }
    
    private func styledIcon(_ imageName: String) -> some View {
        Image(imageName)
            .renderingMode(.template)
            .foregroundStyle(Color(.darkGray))
    }
    
    var body: some View {
        HStack {
            ForEach(sport_interest, id: \.self) { sport in
                switch sport.lowercased() { // Switch on the lowercase sport
                    case "basketball":
                        styledIcon("basketball-icon")
                    case "tennis":
                        styledIcon("tennis-icon")
                    case "volleyball":
                        styledIcon("volleyball-icon")
                    case "badminton":
                        styledIcon("badminton-icon")
                    case "soccer":
                        styledIcon("soccer-icon")
                    case "table tennis":
                        styledIcon("tabletennis-icon")
                    case "pickleball":
                        styledIcon("pickleball-icon")
                    case "frisbee":
                        styledIcon("frisbee-icon")
                    case "football":
                        styledIcon("football-icon")
                    case "baseball":
                        styledIcon("baseball-icon")
                    case "golf":
                        styledIcon("golf-icon")
                    default: // The default case is equivalent to the 'else'
                        styledIcon("othersports-icon")
                }
            }
        }
        .padding(.top, 3)
        .padding(.bottom, 3)
    }
}

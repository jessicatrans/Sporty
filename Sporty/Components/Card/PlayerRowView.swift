//
//  PlayerRowView.swift
//  Sporty
//
//  Created by Jessica Trans on 2/1/25.
//

import SwiftUI

struct PlayerRowView: View {
    let player: Player
    var body: some View {
        VStack {
            PlayerHeaderView(player: player)
            PlayerDetailsView(player: player)
        }
        .padding()
    }
}

#Preview {
    PlayerRowView(player: players[0])
}

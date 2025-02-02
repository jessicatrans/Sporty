//
//  PlayerHeaderView.swift
//  Sporty
//
//  Created by Jessica Trans on 2/1/25.
//

import SwiftUI

import SwiftUI

struct PlayerHeaderView: View {
    let player: Player
    
    var body: some View {
        HStack(alignment: .top){
            HStack{
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .frame(width: 60, height: 60)
                VStack(alignment: .leading){
                    Text("\(player.first_name), \(player.age)")
                        .font(.setCustom(fontStyle: .title2, fontWeight: .semibold))
                    Text(player.location)
                        .font(.setCustom(fontStyle: .body))
                }
            }
            Spacer()
            Image("ellipsis")
        }
//        .padding(.bottom, 15)
    }
}

#Preview {
    PlayerHeaderView(player: players[0])
}

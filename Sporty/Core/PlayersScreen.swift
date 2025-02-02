//
//  PlayersScreen.swift
//  Sporty
//
//  Created by Jessica Trans on 2/1/25.
//

import SwiftUI

struct PlayersScreen: View {
    
    var body: some View {
        VStack {
            // have it accept parameters for Title, icons
            HeaderTitleView(tabName: "Players")
            HeaderFilterView()
            
            // Main Body (Vertical Scroll)
            ScrollView {
                VStack {
                    ViewAllTitle(title: "Suggested Players")
                    CardPlayerHorizontalScroll()
                    NearbyTitle(title: "Players Nearby")
                    CardPlayerVerticalScroll()
                }
            }
            .frame(maxWidth: .infinity)
            .background(Color(.systemGray6))
        }
    }
}

#Preview {
    PlayersScreen()
}

// List Card View (items) - Horizontal
struct CardPlayerHorizontalScroll: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                ForEach(players) { player in
                    PlayerRowView(player: player)
                        .frame(width: 340, height: 248, alignment: .topLeading)
                }
                .background(Color.white)
                .cornerRadius(18)
                .shadow(radius: 2)
                
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 5)
        }
    }
}

// List Card View (items) - Vertical
struct CardPlayerVerticalScroll: View {
    var body: some View {
        VStack(spacing: 20) {
            ForEach(players) { player in
                PlayerRowView(player: player)
                    .frame(width: 361, height: 248, alignment: .topLeading)
            }
            .background(Color.white)
            .cornerRadius(18)
            .shadow(radius: 2)
        }
        .padding(.vertical, 5)
    }
}

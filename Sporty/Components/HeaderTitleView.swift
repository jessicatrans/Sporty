//
//  HeaderTitleView.swift
//  Sporty
//
//  Created by Jessica Trans on 2/1/25.
//

import SwiftUI

struct HeaderTitleView: View {
    let tabName: String
    
    var body: some View {
        HStack{
            switch tabName {
                case "Players":
                    PlayersTitleView()
                case "Chats":
                    ChatsTitleView()
                case "Profile":
                    ProfileTitleView()
                default:
                    PlansTitleView()
            }
            
            Image("bell")
                .iconStyle()
        }
        .padding(.horizontal)
    }
}

#Preview {
    HeaderTitleView(tabName: "Plans")
}

extension Image {
    func iconStyle() -> some View {
        self
            .resizable()
            .frame(width: 24, height: 24)
            .padding(6)
            .background(Color(.systemGray6))
            .clipShape(Circle())
            .padding(.horizontal, 3)
    }
}

// TODO: minimize code to prevent DRY
struct PlansTitleView: View {
    var body: some View {
        Image("sporty")
            .resizable()
            .frame(width: 24, height: 24)
        Text("Sporty")
            .font(.setCustom(fontStyle: .largeTitle, fontWeight: .bold))
      
        Spacer()
        
        Image("my-plans")
            .iconStyle()
        Image("search")
            .iconStyle()
    }
}

struct PlayersTitleView: View {
    var body: some View {
        Text("Find players")
            .font(.setCustom(fontStyle: .largeTitle, fontWeight: .semibold))
      
        Spacer()
        
        Image("search")
            .iconStyle()
    }
}

struct ChatsTitleView: View {
    var body: some View {
        Text("Chats")
            .font(.setCustom(fontStyle: .largeTitle, fontWeight: .semibold))
      
        Spacer()
        
        Image("write")
            .iconStyle()
    }
}

struct ProfileTitleView: View {
    var body: some View {
        // TODO: grab user info for username
        Text("Derrick_Laker24")
            .font(.setCustom(fontStyle: .largeTitle, fontWeight: .semibold))
      
        Spacer()
        
        Image("settings")
            .iconStyle()
    }
}

//
//  TabScreenView.swift
//  Sporty
//
//  Created by Jessica Trans on 2/1/25.
//

import SwiftUI
import SwiftData

struct TabScreenView: View {
    
    // enum approach for Tabs, identified by some `Hashable` type
    enum Tab: Hashable {
        case plans, players, create, chats, profile
    }
    
    // beginning with plans screen (our home screen)
    @State private var selectedTab: Tab = .plans
    
    var body: some View {
        TabView(selection: $selectedTab) {
            // TODO: update tabView Icons (plans,players, create, chats, profile)
            PlansScreen()
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Plans")
                }
                .tag(Tab.plans)
            
            PlayersScreen()
                .tabItem {
                    Image(systemName: "person.2")
                    Text("Players")
                }
                .tag(Tab.players)
            
            Text("Create")
                .tabItem {
                    Image(systemName: "plus.circle")
                    Text("Create")
                }
                .tag(Tab.create)
            
            Text("Chats")
                .tabItem {
                    Image(systemName: "message")
                    Text("Chats")
                }
                .tag(Tab.chats)
                .badge(6)
            
            Text("Profile")
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Profile")
                }
                .tag(Tab.profile)
        }
        .accentColor(Color(.black))
    }
    
 
}


#Preview {
    TabScreenView()
}

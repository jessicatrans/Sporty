//
//  ContentView.swift
//  Sporty
//
//  Created by Jessica Trans on 1/3/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    
    var body: some View {
//        TabPageView()
        TabScreenView()
    }

    private func addItem() {
        withAnimation {
            let newItem = Item(timestamp: Date())
            modelContext.insert(newItem)
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(items[index])
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
//
//struct TabPageView: View {
//    @State private var selectedTab: Int = 0
//    
//    var body: some View {
//        TabView(selection: $selectedTab) {
//            PlansScreen()
//                .tabItem {
//                    Image(systemName: "calendar")
//                    Text("Plans")
//                }
//                .tag(0)
//            PlayersScreen()
//                .tabItem {
//                    Image(systemName: "person.2")
//                    Text("Players")
//                }
//                .tag(1)
//            Text("Create")
//                .tabItem {
//                    Image(systemName: "plus.circle")
//                    Text("Create")
//                }
//                .tag(2)
//            Text("Chats")
//                .tabItem {
//                    Image(systemName: "message")
//                    Text("Chats")
//                }
//                .tag(3)
//                .badge(6)
//            Text("Profile")
//                .tabItem {
//                    Image(systemName: "person.crop.circle")
//                    Text("Profile")
//                }
//                .tag(4)
//            
//        }
//        .tint(Color(.black))
//    }
//}

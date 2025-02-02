//
//  PlansScreen.swift
//  Sporty
//
//  Created by Jessica Trans on 2/1/25.
//

import SwiftUI
import SwiftData

struct PlansScreen: View {
    var body: some View {
        VStack {
            // Header + Logo
            HeaderTitleView(tabName: "Plans")
            HeaderFilterView()

            // Main Body (Vertical Scroll)
            ScrollView {
                VStack {
                    ViewAllTitle(title: "Upcoming plans")
                    CardHorizontalScroll()
                    NearbyTitle(title: "Plans Nearby")
                    CardVerticalScroll()
                }
            
            }
            .frame(maxWidth: .infinity)
            .background(Color(.systemGray6))
        }
    }
}

#Preview {
    PlansScreen()
}


// List Card View (items) - Horizontal
struct CardHorizontalScroll: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                ForEach(plans) { plan in
                    PlanRowView(plan: plan)
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
struct CardVerticalScroll: View {
    var body: some View {
        VStack(spacing: 20) {
            ForEach(plans) { plan in
                PlanRowView(plan: plan)
                    .frame(width: 361, height: 248, alignment: .topLeading)
            }
            .background(Color.white)
            .cornerRadius(18)
            .shadow(radius: 2)
        }
        .padding(.vertical, 5)
    }
}

struct ViewAllTitle: View {
    let title: String
    var body: some View {
        HStack {
            Text(title)
                .font(.setCustom(fontStyle: .title, fontWeight: .semibold))
            
            Spacer()
            Text("View all")
                .font(.setCustom(fontStyle: .callout, fontWeight: .medium))
            // TODO: update blue color to interactive blue color in Figma
                .foregroundStyle(.blue)
        }
        .padding(.horizontal, 20)
        .padding(.top, 20)
    }
}

struct NearbyTitle: View {
    let title: String
    var body: some View {
        HStack {
            Text(title)
                .font(.setCustom(fontStyle: .title, fontWeight: .semibold))
            Spacer()
        }
        .padding(.horizontal, 20)
        .padding(.top, 40)
    }
}

//
//  PlansView.swift
//  Sporty
//
//  Created by Jessica Trans on 1/5/25.
//

import SwiftUI
import SwiftData

struct PlansView: View {
    
    let filterOptions = ["All sports", "Nearby", "All dates", "All levels", "My sports", "Friends"]
    
    var body: some View {
        VStack {
//          Header + Logo
            HStack{
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
                Image("bell")
                    .iconStyle()
            }
            .padding(.horizontal)
            
//          Filters
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    Image("filter")
                        .padding(7)
                        .padding(.horizontal, 6)
                        .overlay(
                            RoundedRectangle(cornerRadius: 18).stroke(Color(.systemGray4), lineWidth: 1)
                        )
                    
                    ForEach(filterOptions, id: \.self) { option in
                        FilterButton(title: option)
                    }
                }
                .padding(.horizontal)
            }
            
//          Main Body (Vertical Scroll)
            ScrollView {
                VStack() {
                    
                    HStack {
                        Text("Upcoming plans")
                            .font(.setCustom(fontStyle: .title, fontWeight: .semibold))
                        
                        Spacer()
                        Text("View all")
                            .font(.setCustom(fontStyle: .callout, fontWeight: .medium))
                            // TODO: update blue color to interactive blue color in Figma
                            .foregroundStyle(.blue)
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 20)
                    
                    // TODO: List Card View (items) - Horizontal
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 10) {
                            ForEach(plans) { plan in
                                PlanRowView(plan: plan)
                                    .frame(width: 340, height: 248, alignment: .center)
                            }
                            .background(Color.white)
                            .cornerRadius(18)
                            .shadow(radius: 2)
                            
                        }
                        .padding(.horizontal, 20)
                        .padding(.vertical, 5)
                    }
                
            
                    HStack {
                        Text("Plans nearby")
                            .font(.setCustom(fontStyle: .title, fontWeight: .semibold))
                        Spacer()
                                            }
                    .padding(.horizontal, 20)
                    .padding(.top, 40)
                    
                    // TODO: List Card View (items) - Vertical
                    VStack(spacing: 20) {
                        ForEach(plans) { plan in
                            PlanRowView(plan: plan)
                                .frame(width: 361, height: 248, alignment: .center)
                        }
                        .background(Color.white)
                        .cornerRadius(18)
                        .shadow(radius: 2)
                    }
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
                }
            
            }
            .frame(maxWidth: .infinity)
            .background(Color(.systemGray6))
        }
    }
}


#Preview {
    PlansView()
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

struct FilterButton: View {
    let title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.setCustom(fontStyle: .headline, fontWeight: .medium))
            Image("dropdown")
                .frame(width: 5)
        }
        .padding(9)
        .padding(.horizontal, 6)
        .overlay(
            RoundedRectangle(cornerRadius: 18).stroke(Color(.systemGray4), lineWidth: 1)
        )
    }
}

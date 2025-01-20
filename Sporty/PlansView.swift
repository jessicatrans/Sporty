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
                        .padding(6)
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
            
//          Main Body
            ScrollView {
                VStack() {
                    
                    HStack {
                        Text("Upcoming plans")
                            .font(.system(size: 20, weight: .semibold))
                        
                        Spacer()
                        Text("View all")
                            .font(.system(size: 16))
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 20)
                    
//                    List Card View (items) - Horizontal
                    
                    HStack {
                        Text("Plans nearby")
                            .font(.system(size: 20, weight: .semibold))
                        Spacer()
//                        List Card View (items) - Vertical
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 20)
                    
                    
                       
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

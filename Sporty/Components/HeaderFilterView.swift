//
//  HeaderFilterView.swift
//  Sporty
//
//  Created by Jessica Trans on 1/31/25.
//

import SwiftUI

struct HeaderFilterView: View {
    
    
    var body: some View {
        VStack {
            Filters()
        }
    }
}

#Preview {
    HeaderFilterView()
}

//struct Titles: View {
//    var body: some View {
//        // TODO: switch case for title and icons
//    }
//}

// Filters
struct Filters: View {
    let filterOptions = ["All sports", "Nearby", "All dates", "All levels", "My sports", "Friends"]

    var body: some View {
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
            RoundedRectangle(cornerRadius: 18)
                .stroke(Color(.systemGray4), lineWidth: 1)
        )
    }
}

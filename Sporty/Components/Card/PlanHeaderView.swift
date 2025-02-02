//
//  PlanHeaderView.swift
//  Sporty
//
//  Created by Jessica Trans on 1/30/25.
//

import SwiftUI
import SwiftData

struct PlanHeaderView: View {
    let plan: Plan
    
    var body: some View {
        HStack {
            HStack{
                SportIcon(plan: plan)
                Text("\(plan.sport) - \(plan.level)")
                    .font(.setCustom(fontStyle: .caption, fontWeight: .semibold))
                    .foregroundStyle(Color(.darkGray))
            }

            Spacer()
            
            HStack(spacing: 15){
                Image("bookmark")
                Image("ellipsis")
            }
//            .padding(.horizontal, 10)

            
        }
        .padding(.bottom, 15)
//        .padding()
    }
}

#Preview {
    PlanHeaderView(plan: plans[0])
}

struct SportIcon: View {
    let plan: Plan
    
    private func styledIcon(_ imageName: String) -> some View {
        Image(imageName)
            .renderingMode(.template)
            .foregroundStyle(Color(.darkGray))
    }
    
    var body: some View {        
        // conditional image based on plan.sport
        switch plan.sport.lowercased() { // Switch on the lowercase sport
            case "basketball":
                styledIcon("basketball-icon")
            case "tennis":
                styledIcon("tennis-icon")
            case "volleyball":
                styledIcon("volleyball-icon")
            case "badminton":
                styledIcon("badminton-icon")
            case "soccer":
                styledIcon("soccer-icon")
            case "table tennis":
                styledIcon("tabletennis-icon")
            case "pickleball":
                styledIcon("pickleball-icon")
            case "frisbee":
                styledIcon("frisbee-icon")
            case "football":
                styledIcon("football-icon")
            case "baseball":
                styledIcon("baseball-icon")
            case "golf":
                styledIcon("golf-icon")
            default: // The default case is equivalent to the 'else'
                styledIcon("othersports-icon")
        }
    }
}

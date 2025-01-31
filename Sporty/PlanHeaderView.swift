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
            Text("\(plan.sport) - \(plan.level)")

            Image(systemName: "bookmark")
            Image(systemName: "ellipsis")

        }
    }
}

#Preview {
    PlanHeaderView(plan: plans[0])
}

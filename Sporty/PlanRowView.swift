//
//  PlanRowView.swift
//  Sporty
//
//  Created by Jessica Trans on 1/30/25.
//

import SwiftUI

struct PlanRowView: View {
    let plan: Plan
    
    var body: some View {
        VStack {
            PlanHeaderView(plan: plan)
            PlanDetailsView(plan: plan)
        }
        .padding()
    }
}

#Preview {
    PlanRowView(plan: plans[0])
}

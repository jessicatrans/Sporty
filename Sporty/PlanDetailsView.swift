//
//  PlanDetailsView.swift
//  Sporty
//
//  Created by Jessica Trans on 1/30/25.
//

import SwiftUI

struct PlanDetailsView: View {
    let plan: Plan
    
    var body: some View {
        VStack(alignment: .leading) {
            // TODO: make card
            VStack(alignment: .leading) {
                Text(plan.time)
                Text(plan.title)
                Text(plan.location)
                
                // TODO: view chat button  + share button
                HStack {
                    Button {
                        // TODO: add view chat action here
                    } label: {
                        Text("View chat")
                    }
                    Image("send")
                }
                
            }
        }
    }
}

#Preview {
    PlanDetailsView(plan: plans[0])
}

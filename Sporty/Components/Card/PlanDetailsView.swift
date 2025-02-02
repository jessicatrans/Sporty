//
//  PlanDetailsView.swift
//  Sporty
//
//  Created by Jessica Trans on 1/30/25.
//

import SwiftUI
import SwiftData

struct PlanDetailsView: View {
    let plan: Plan
    
    var body: some View {
        VStack(alignment: .leading) {
            // details + image
            CardPlanDetailsView(plan: plan)
            
            // TODO: friends
            MutualFriends()
            
            // buttons
            HStack() {
                JoinButton(plan: plan)
                ShareButton()
            }
            .padding(.top, 5)
            .padding(.bottom, 5)
        }
    }
}

#Preview {
    PlanDetailsView(plan: plans[0])
}

struct CardPlanDetailsView: View {
    let plan: Plan
    
    var body: some View {
        HStack(){
            VStack(alignment: .leading, spacing: 7) {
                // details
                Text(plan.time)
                    .font(.setCustom(fontStyle: .caption, fontWeight: .semibold))
                    .foregroundStyle(Color.green) // TODO: update to correct green color
                Text(plan.title)
                    .font(.setCustom(fontStyle: .title2, fontWeight: .semibold))
                    .multilineTextAlignment(.center)
//                    .lineLimit(3)
                    // get rid of truncate
                Text(plan.location)
                    .font(.setCustom(fontStyle: .body))
            }
            .padding(.trailing, 20)
            
            Spacer()
            
            // image
            plan.image
        }
    }
}

struct JoinButton: View {
    let plan: Plan
    
    // if plan.joined then "View chat", else "Request" button
    var body: some View {
        if plan.joined == true {
            Button {
                // TODO: add view chat action here
            } label: {
                Text("View chat")
                    .font(.setCustom(fontStyle: .headline, fontWeight: .medium))
                    .foregroundStyle(Color.black)
            }
            .frame(width: 252, height: 36)
            .background(Color(.systemGray6))
            .cornerRadius(10)
        } else {
            Button {
                // TODO: add request action here
            } label: {
                Text("Request")
                    .font(.setCustom(fontStyle: .headline, fontWeight: .medium))
                    .foregroundStyle(Color.white)
            }
            .frame(width: 252, height: 36)
            .background(Color(.blue))
            .cornerRadius(10)
        }
    }
}

struct ShareButton: View {
    var body: some View {
        Image("send")
            .resizable()
            .frame(width: 24, height: 24)
            .padding(.horizontal, 13)
            .padding(.vertical, 6)
            .background(Color(.systemGray6))
            .cornerRadius(10)
    }
}

struct MutualFriends: View {
    var body: some View {
        HStack{
            Image("friends-pfp")
            Divider()
                .frame(height: 20)
            //                    Text("**Raymond**, **Ashley**, and **Chris** have joined")
            //                        // names are .medium, rest of text is .regular
            //                        .font(.setCustom(fontStyle: .caption))
            //                        .foregroundStyle(Color.gray)
            //                        .lineLimit(1)
            //                        .truncationMode(.tail)
            HStack{
                Text("Raymond").font(.setCustom(fontStyle: .caption, fontWeight: .medium)) +
                Text(", ").font(.setCustom(fontStyle: .caption, fontWeight: .regular)).foregroundStyle(Color.gray) +
                Text("Ashley").font(.setCustom(fontStyle: .caption, fontWeight: .medium)) +
                Text(", and ").font(.setCustom(fontStyle: .caption, fontWeight: .regular)).foregroundStyle(Color.gray) +
                Text("Chris ").font(.setCustom(fontStyle: .caption, fontWeight: .medium)) +
                Text("have joined").font(.setCustom(fontStyle: .caption, fontWeight: .regular)).foregroundStyle(Color.gray)
            }
            .lineLimit(1)
            .padding(.top, 5)
            .padding(.bottom, 5)
        }
    }
}

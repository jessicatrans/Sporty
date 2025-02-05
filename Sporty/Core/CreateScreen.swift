//
//  CreateScreen.swift
//  Sporty
//
//  Created by Jessica Trans on 2/4/25.
//

import SwiftUI

struct CreateScreen: View {
    var body: some View {
        // create plan page
        
        VStack {
            // header
            HStack {
                Image("cancel")
                    .padding(.horizontal, 15)
                    .padding(.trailing, 90)
                Text("Create plan")
                    .font(.setCustom(fontStyle: .title2, fontWeight: .semibold))
                
                Spacer()
            }
            HStack{
                // image (optional)
                Image("plan-picture")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay(ImageOverlay(), alignment: .center)    // overlay text "upload(optional)"
            }
            
                
            Spacer()
            
            // TODO: "Create plan" button
            CreatePlanButton()
                .padding(.vertical, 10)
            
        }
        // TODO: button > child view
        //
    }
}

#Preview {
    CreateScreen()
}

struct ImageOverlay: View {
    var body: some View {
        HStack {
            Image("upload")
            Text("Upload (Optional)")
                .font(.setCustom(fontStyle: .body, fontWeight: .medium))
        }
        .foregroundColor(Color(.white))
    }
}

struct CreatePlanButton : View {
    var body: some View {
        Button {
            
        } label: {
            Text("Create plan")
                .font(.setCustom(fontStyle: .body, fontWeight: .medium))
                .foregroundStyle(Color(.gray))
        }
        .frame(width: 377, height: 44)
        .background(Color(.systemGray3))
        .cornerRadius(10)
        
    }
}

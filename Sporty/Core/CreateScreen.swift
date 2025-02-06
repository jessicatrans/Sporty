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
            
            ScrollView {
                HStack{
                    // image (optional)
                    Image("plan-picture")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .overlay(ImageOverlay(), alignment: .center)    // overlay text "upload(optional)"
                }
                
                    
                Spacer()
                
                // TODO: Input sections
                VStack {
                    InputView()
                    InputView()
                    InputView()
                    InputView()
                }
                .padding(.vertical, 5)
                
                Divider()
                    .frame(width: 365, height: 20)
                VStack {
                    OptionalTitle(title: "Optional")
                    InputView()
                    InputView()
                    InputView()
                    InputView()
                }
            }
            
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

struct OptionalTitle: View {
    let title: String
    var body: some View {
        HStack {
            Text(title)
                .font(.setCustom(fontStyle: .title, fontWeight: .semibold))
            Spacer()
        }
        .padding(.horizontal, 20)
        .padding(.top, 10)
    }
}


struct InputView : View {
    var body: some View {
        Button {
            
        } label: {
            HStack {
                Image("sporty")

                VStack {
                    Text("Sport")
                        .font(.setCustom(fontStyle: .body))
                    Text("Tennis")
                        .font(.setCustom(fontStyle: .caption))
                }
                .foregroundStyle(Color(.black))
                Spacer()
                
                // TODO: update arrow
                Image(systemName: "chevron.right")
                    .foregroundStyle(Color(.black))
            }
            .padding(20)
            
        }
        .frame(width: 361, height: 56)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray4), lineWidth: 1)
        )
    }
}

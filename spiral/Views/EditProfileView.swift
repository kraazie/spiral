//
//  EditProfile.swift
//  spiral
//
//  Created by apple on 27/11/2024.
//

import SwiftUI

struct EditProfileView: View {
    
    var body: some View {
        VStack(spacing: 7) {
            ZStack {
                RadiantBorderImageView()
                Image("edit")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 31, height: 31)
                    .offset(x: 60, y: 60)
            }
            
            Text("Jane Doe")
                .foregroundColor(.black)
                .font(FontConstants.satoshiBold(size: 20))
                .frame(maxWidth: .infinity, alignment: .center)
            
            Text("Developer")
                .foregroundColor(.gray)
                .font(FontConstants.satoshiRegular(size: 14))
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.bottom, 24)

            
            ExtractedView(
                icon:"envelope",
                labelText: "Your Email",
                placeholder: "jane@gmail.com"
            )
            ExtractedView(
                icon:"phone",
                labelText: "Phone Number",
                placeholder: "+254182729202"
            )
            ExtractedView(
                
                labelText: "Career",
                placeholder: "Developer"
            )
            ExtractedView(
                icon: "location",
                labelText: "Address",
                placeholder: "Nairobi"
            )
            .padding(.bottom, 28)

            
            Button(action: {
                print("button tapped")
            }) {
                Text("Save Changes")
            }
            .buttonStyle(ButtonStyleThree())
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 20.14, trailing: 0))
            
            
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    EditProfileView()
}

struct ExtractedView: View {
    var icon: String?
    var labelText: String
    var placeholder: String
    
    var body: some View {
        VStack {
            
            Text(labelText)
                .foregroundColor(.black)
                .font(FontConstants.satoshiBold(size: 14))
                .frame(maxWidth: .infinity, alignment: .leading)

            HStack {
                if let icon {
                    Image(systemName: icon)
                        .foregroundColor(.gray)
                        .padding(.leading, 8)
                }
                
                TextField(placeholder, text: .constant(""))
                    .foregroundColor(.gray)
                    .padding(.vertical, 12)
            }
            .padding(.horizontal, 8)
            .background(Color.white)
            .cornerRadius(16)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color.gray.opacity(0.2), lineWidth: 1)
            )
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
        }
    }
}

//
//  SuccessView.swift
//  spiral
//
//  Created by apple on 27/11/2024.
//

import SwiftUI

struct SuccessView: View {

    var body: some View {
        ZStack {
            // Background
            RadialGradient(
                gradient: Gradient(colors: [Color.blue.opacity(0.9), Color.black]),
                center: .center,
                startRadius: 100,
                endRadius: 600
            )
            .ignoresSafeArea()
            
            Image("img2")
                .resizable()
                .scaledToFit()
                .frame(width: 221, height: 206)
                .offset(x: 105, y: -275)
            
            // Image at Bottom-Right
               Image("img3")
                   .resizable()
                   .scaledToFit()
                   .frame(width: 221, height: 206)
                   .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                   .ignoresSafeArea()

            // Foreground Content
            VStack(spacing: 7) {
                Text("Spiral")
                    .foregroundColor(.white)
                    .font(FontConstants.satoshiHeavy(size: 26))
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                
                Image("check")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 115, height: 115)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))

                
                Text("Authentication Successful")
                    .foregroundColor(.white)
                    .font(FontConstants.satoshiBold(size: 24))
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 58, trailing: 0))
                
                Text("Redirecting you to your account")
                    .foregroundColor(.white)
                    .font(FontConstants.satoshiRegular(size: 16))
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 58, trailing: 0))

                
            }
            .padding(EdgeInsets(top: 20, leading: 16, bottom: 20, trailing: 16))
//            .frame(height: 550)
            .frame(maxWidth: .infinity)
//            .clipped()
            .background(
                RoundedRectangle(cornerRadius: 24)
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [
                                Color(hex: "#5882C1").opacity(0.49),
                                Color(hex: "#5882C1").opacity(0.11)
                            ]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .overlay(
                        Color(hex: "#5882C1").opacity(0.28) // 28% opacity
                    )
                    .cornerRadius(24)
            )
            .padding(.horizontal)
            
            Image("img1")
                .resizable()
                .scaledToFit()
                .frame(width: 105, height: 57)
                .offset(x: -140, y: -195)
        }
        
    }
}

#Preview {
    SuccessView()
}

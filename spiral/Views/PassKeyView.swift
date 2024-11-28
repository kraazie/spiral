//
//  PassKeySignIn.swift
//  spiral
//
//  Created by apple on 27/11/2024.
//

import SwiftUI

struct PassKeyView: View {
    @State private var action: Int? = 0
    
    var body: some View {
        NavigationStack {
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
                    
                    Text("Passkey Sign in")
                        .foregroundColor(.white)
                        .font(FontConstants.satoshiHeavy(size: 20.14))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 2, trailing: 0))
                    
                    Text("Place your finger on the sensor to continue")
                        .foregroundColor(.white)
                        .font(FontConstants.satoshiRegular(size: 10))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 38, trailing: 0))
                    
                    
                    Image("passkey")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 175, height: 175)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 38, trailing: 0))
                    
                    NavigationLink(
                        destination: SuccessView(),
                        tag: 3,
                        selection: $action
                    ) {
                        Button(action: {
                            action = 3
                        }) {
                            Text("Cancel")
                        }
                        .buttonStyle(ButtonStyleOne())
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 20.14, trailing: 0))
                    }
                }
                .padding(EdgeInsets(top: 20, leading: 16, bottom: 20, trailing: 16))
                .frame(height: 550)
                .clipped()
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
                    .offset(x: -140, y: -275)
            }
            .frame(maxHeight: .infinity)
        }
        
    }
}

#Preview {
    PassKeyView()
}

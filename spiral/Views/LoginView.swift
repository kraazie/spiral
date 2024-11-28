//
//  ContentView.swift
//  spiral
//
//  Created by apple on 27/11/2024.
//

import SwiftUI

struct LoginView: View {
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
                    
                    Text("Login")
                        .foregroundColor(.white)
                        .font(FontConstants.satoshiHeavy(size: 20.14))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                    
                    Text("Email")
                        .foregroundColor(.white)
                        .font(FontConstants.satoshiRegular(size: 10.19))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    // Email TextField
                    TextField("Email", text: .constant(""))
                        .padding()
                        .background(Color.white)
                        .cornerRadius(8)
                        .foregroundColor(.black)
                        .keyboardType(.emailAddress)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 12, trailing: 0))
                    
                    Text("Password")
                        .foregroundColor(.white)
                        .font(FontConstants.satoshiHeavy(size: 10.19))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    // Password SecureField
                    SecureField("Password", text: .constant(""))
                        .padding()
                        .background(Color.white)
                        .cornerRadius(8)
                        .foregroundColor(.black)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 20.14, trailing: 0))
                    
                    // NavigationLink for Sign in Button
                    NavigationLink(
                        destination: DashboardView(),
                        tag: 1,
                        selection: $action
                    ) {
                        Button(action: {
                            action = 1
                        }) {
                            Text("Sign in")
                        }
                        .buttonStyle(ButtonStyleOne())
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 20.14, trailing: 0))
                    }
                    
                    
                    Text("or choose")
                        .font(FontConstants.satoshiRegular(size: 10.91))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 20.14, trailing: 0))
                    
                    
                    NavigationLink(
                        destination: PassKeyView(),
                        tag: 2,
                        selection: $action
                    ) {
                        Button(action: {
                            action = 2
                        }) {
                            Text("Sign in with Passkey")
                        }
                        .buttonStyle(ButtonStyleTwo())
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 20.14, trailing: 0))
                    }
                    
                    HStack(spacing: 16) {
                        // Google Button
                        Button(action: {
                            print("Google button tapped")
                        }) {
                            HStack {
                                Image("google")
                                    .resizable()
                                    .frame(width: 24, height: 24)
                            }
                            .frame(width: 100, height: 44)
                            .background(
                                RoundedRectangle(cornerRadius: 12)
                                    .fill(Color.white)
                            )
                        }
                        
                        
                        // GitHub Button
                        Button(action: {
                            print("GitHub button tapped")
                        }) {
                            HStack {
                                Image("github")
                                    .resizable()
                                    .frame(width: 24, height: 24)
                            }
                            .frame(width: 100, height: 44)
                            .background(
                                RoundedRectangle(cornerRadius: 12)
                                    .fill(Color.white)
                            )
                        }
                    }
                    .padding(.horizontal, 16)
                    
                    
                    HStack {
                        Text("Don't have an account yet?")
                            .font(FontConstants.satoshiRegular(size: 10.91))
                            .foregroundColor(.white)
                        Text("Register for free")
                            .font(FontConstants.satoshiRegular(size: 10.91))
                            .foregroundColor(Color(hex: "#05FBF3"))
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
        }
        
    }
}

#Preview {
    LoginView()
}

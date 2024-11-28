//
//  AppointmentCard.swift
//  spiral
//
//  Created by apple on 28/11/2024.
//

import SwiftUI


struct AppointmentCard: View {
    var body: some View {
        ZStack {
            // Background
            RoundedRectangle(cornerRadius: 16)
                .fill(Color(hex: "4A90E2"))
            
            VStack(spacing: 24) {
                
                HStack(spacing: 12) {
                    Image("doctor")
                        .resizable()
                        .background(Color.white)
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
//                        .overlay(
//                            Circle()
//                                .stroke(Color.white, lineWidth: 2)
//                        )
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Dr. a Syahir")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                        
                        Text("General Doctor")
                            .font(.subheadline)
                            .foregroundColor(.white.opacity(0.9))
                    }
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .foregroundColor(.white)
                        .font(.system(size: 20, weight: .medium))
                }
                
                // Appointment Info Row
                HStack(spacing: 40) {
                    // Date
                    HStack(spacing: 8) {
                        Image(systemName: "calendar")
                            .foregroundColor(.white)
                        Text("Sunday, 12 June")
                            .foregroundColor(.white)
                            .font(.subheadline)
                    }
                    
                    // Time
                    HStack(spacing: 8) {
                        Image(systemName: "clock")
                            .foregroundColor(.white)
                        Text("11:00 - 12:00 AM")
                            .foregroundColor(.white)
                            .font(.subheadline)
                    }
                }
            }
            .padding(20)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 160)
        .padding(.horizontal)
    }
}

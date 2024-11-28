//
//  TagView.swift
//  spiral
//
//  Created by apple on 28/11/2024.
//

import SwiftUI

struct TagView: View {
    var label: String
    var bgColor: String
    var circleColor :String
    
    var body: some View {
        HStack(spacing: 8) {
            Circle()
                .fill(Color(hex: circleColor))
                .frame(width: 24, height: 24) // Circle size
            
            Text(label)
                .font(FontConstants.satoshiBold(size: 11))
                .foregroundColor(.black)
            
            Spacer()
        }
        .frame(width: 100) // Fixed width for the tag
        .padding(.vertical, 8)
        .padding(.leading, 8)
        .background(Color(hex: bgColor)) // Light background color
        .cornerRadius(20) // Rounded edges
    }
}

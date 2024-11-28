//
//  RadiantBorderImageView.swift
//  spiral
//
//  Created by apple on 28/11/2024.
//

import SwiftUI

struct RadiantBorderImageView: View {
    var viewSize: CGFloat = 150
    
    private var imageSize: CGFloat {
        return viewSize/1.15
    }
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: viewSize/4, style: .circular)
                .strokeBorder(
                    LinearGradient(
                        gradient: Gradient(colors: [.blue, .purple, .pink]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    ),
                    lineWidth: 3
                )
                .frame(width: viewSize, height: viewSize)
            
            Image("avatar")
                .resizable()
                .scaledToFill()
                .clipShape(RoundedRectangle(cornerRadius: imageSize/4))
                .frame(width: imageSize, height: imageSize)
        }
    }
}

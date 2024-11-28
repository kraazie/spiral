//
//  IconView.swift
//  spiral
//
//  Created by apple on 28/11/2024.
//

import SwiftUI

struct IconView: View {
    var viewSize: CGFloat = 67
    var bgColor: String = "#EEFCF7"
    var icon: String = "fingerprint"
    var onTap: (() -> Void)? = nil
    
    private var imageSize: CGFloat {
        return viewSize/2.0
    }
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12, style: .circular)
                .fill(Color(hex: bgColor))
                .frame(width: viewSize, height: viewSize)
            
            Image(icon)
                .resizable()
                .scaledToFill()
                .frame(width: imageSize, height: imageSize)
        }
        .onTapGesture {
            onTap?() // Trigger the callback
        }
    }
}

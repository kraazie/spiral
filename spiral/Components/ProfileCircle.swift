//
//  ProfileCircle.swift
//  spiral
//
//  Created by apple on 28/11/2024.
//

import SwiftUI

struct ProfileCircle: View {
    let name: String
    let image: String
    var isStory: Bool = false
    var body: some View {
        VStack(spacing: 8) {
            ZStack {
                if !isStory {
                    Circle()
                        .stroke(Color.blue, lineWidth: 2)
                        .frame(width: 64, height: 64)
                }
                
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 54, height: 54)
                    .clipShape(Circle())
                
                if isStory {
                    Image("add")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                }
            }
            Text(name)
                .foregroundColor(.black)
                .font(FontConstants.satoshiRegular(size: 14))
        }
        .padding(.vertical,1)
    }
}

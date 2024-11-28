//
//  Constants.swift
//  spiral
//
//  Created by apple on 27/11/2024.
//

import SwiftUI

struct FontConstants {
    static func satoshiHeavy(size: CGFloat) -> Font {
        Font.custom("Satoshi-Black", size: size)
    }
    
    static func satoshiBold(size: CGFloat) -> Font {
        Font.custom("Satoshi-Bold", size: size)
    }
    
    static func satoshiRegular(size: CGFloat) -> Font {
        Font.custom("Satoshi-Regular", size: size)
    }
    
}


struct ButtonStyleOne: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(FontConstants.satoshiHeavy(size: 13.43))
            .foregroundColor(.white)
            .frame(height: 44)
            .frame(maxWidth: .infinity)
            .background(Color(hex: "#082954"))
            .cornerRadius(5.97)
    }
}

struct ButtonStyleTwo: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(FontConstants.satoshiHeavy(size: 13.43))
            .foregroundColor(Color(hex: "#003465"))
            .frame(height: 44)
            .frame(maxWidth: .infinity)
            .background(.white)
            .cornerRadius(5.97)
    }
    
}

struct ButtonStyleThree: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 16, weight: .bold))
            .foregroundColor(.white)
            .frame(height: 50)
            .frame(maxWidth: .infinity)
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [Color(hex: "#0085FF"), Color(hex: "#003465")]),
                    startPoint: .leading,
                    endPoint: .trailing
                )
            )
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.2), radius: 4, x: 0, y: 2)
    }
}


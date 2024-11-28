//
//  EnterOTP.swift
//  spiral
//
//  Created by apple on 28/11/2024.
//

import SwiftUI

struct PINView: View {
    @State private var action: Int? = 0
    @State private var otpDigits: [String] = []
    private let maxDigits = 4
    
    var body: some View {

        NavigationStack {
            VStack(spacing: 7) {
                
                RadiantBorderImageView()
                
                Text("Jane Doe")
                    .foregroundColor(.black)
                    .font(FontConstants.satoshiBold(size: 20))
                    .frame(maxWidth: .infinity, alignment: .center)
                
                Text("Developer")
                    .foregroundColor(.gray)
                    .font(FontConstants.satoshiRegular(size: 14))
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.bottom,43)
                
                OTPndNumPad()
            }
            .frame(maxHeight: .infinity, alignment: .center)
        }
        
    }
    
    //MARK: - OTP Circles and NumPad
    
    private func OTPndNumPad() -> some View {
        VStack {
            HStack(spacing: 16) {
                ForEach(0..<maxDigits, id: \.self) { index in
                    Text(index < otpDigits.count ? otpDigits[index] : "")
                        .frame(width: 66, height: 65)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray.opacity(0.5), lineWidth: 2)
                        )
                }
            }
            .padding(.bottom, 31)
            
            NavigationLink(
                destination: CallerIDView(),
                tag: 5,
                selection: $action
            ) {
                Button(action: {
                    action = 5
                }) {
                    Text("Enter Pin")
                }
                .buttonStyle(ButtonStyleThree())
                .padding(EdgeInsets(top: 0, leading: 24, bottom: 20.14, trailing: 24))
            }
            
            //Number Pad
            VStack(alignment: .trailing, spacing: 16) {
                HStack(spacing: 16) {
                    numPadButton("1")
                    numPadButton("2")
                    numPadButton("3")
                }
                HStack(spacing: 16) {
                    numPadButton("4")
                    numPadButton("5")
                    numPadButton("6")
                }
                HStack(spacing: 16) {
                    numPadButton("7")
                    numPadButton("8")
                    numPadButton("9")
                }
                HStack(spacing: 16) {
                    numPadButton("0")
                    backspaceButton()
                }
                
            }
        }
    }
    
    // MARK: - Numpad Button
    private func numPadButton(_ number: String) -> some View {
        Button(action: {
            if otpDigits.count < maxDigits {
                otpDigits.append(number)
                print(otpDigits)
            }
        }) {
            Text(number)
                .font(FontConstants.satoshiBold(size: 32))
                .foregroundColor(Color.black)
                .frame(width: 60, height: 60)
                .foregroundColor(Color.black)
                .padding(.horizontal, 10)
//                .background(RoundedRectangle(cornerRadius: 10)
//                    .stroke(Color.blue, lineWidth: 3))
        }
    }
    
    // MARK: - Backspace Button
    private func backspaceButton() -> some View {
        Button(action: {
            if !otpDigits.isEmpty {
                otpDigits.removeLast()
                print(otpDigits)
            }
        }) {
            Image("fingerprint")
            //                .font(AppFonts.headline2)
                .frame(width: 60, height: 60)
                .foregroundColor(Color.black)
                .padding(.horizontal, 10)
//                .background(RoundedRectangle(cornerRadius: 10)
//                    .stroke(Color.blue, lineWidth: 3))
        }
    }
}

#Preview {
    PINView()
}

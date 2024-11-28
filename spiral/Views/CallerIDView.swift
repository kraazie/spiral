//
//  CallerIDView.swift
//  spiral
//
//  Created by apple on 28/11/2024.
//

import SwiftUI

struct CallerIDView: View {
    @State private var action: Int? = 0
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                HStack{
                    Image(systemName: "line.3.horizontal")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.black)
                        .padding(.trailing, 8)
                    Text("Caller ID")
                        .foregroundColor(.black)
                        .font(FontConstants.satoshiBold(size: 18))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    NavigationLink(
                        destination: EditProfileView(),
                        tag: 6,
                        selection: $action
                    ) {
                        Image(systemName: "plus")
                            .foregroundColor(.black)
                            .font(.system(size: 20))
                            .onTapGesture {
                                action = 6
                            }
                    }
                }
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    CallerIDView()
}

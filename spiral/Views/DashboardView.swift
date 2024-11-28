//
//  DashboardView.swift
//  spiral
//
//  Created by apple on 28/11/2024.
//

import SwiftUI




struct DashboardView: View {
    @State private var action: Int? = 0
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 7) {
                    HStack(alignment: .center) {
                        VStack {
                            Text("Good Morning,")
                                .foregroundColor(.black)
                                .font(FontConstants.satoshiRegular(size: 20))
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Text("Jane")
                                .foregroundColor(.black)
                                .font(FontConstants.satoshiBold(size: 20))
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        RadiantBorderImageView(viewSize: 50)
                    }
                    .padding(EdgeInsets(top: 0, leading: 16, bottom: 20, trailing: 16))
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 16) {
                            ProfileCircle(name: "My Story", image: "av2", isStory: true)
                            ProfileCircle(name: "Selena", image: "av1")
                            ProfileCircle(name: "Clara", image: "av3")
                            ProfileCircle(name: "Fabian", image: "av4")
                            ProfileCircle(name: "George", image: "av5")
                            
                        }
                        .padding(.horizontal, 16)
                    }
                    .padding(.bottom, 15)
                    
                    AppointmentCard()
                        .padding(.bottom, 15)
                    
                    TagsGridView()
                    
                    NavigationLink(
                        destination: PINView(),
                        tag: 4,
                        selection: $action
                    ) {
                        ScrollItemsView(title: "Frequently Used",
                                        items: [
                                                IconView(bgColor: "#EEFCF7", icon: "ic_callerid",
                                                         onTap: {
                                                             action = 4
                                                         }),
                                                IconView(bgColor: "#FFF3F3", icon: "ic_credit"),
                                                IconView(bgColor: "#FCF7EC", icon: "ic_transfer"),
                                                IconView(bgColor: "#EFF0FC", icon: "ic_request"),
                                                IconView(bgColor: "#FCEFFB", icon: "ic_chart")
                                        ])
                        .padding(.bottom, 36)
                    }
                    
                    ScrollItemsView(title: "Financial Services",
                                    items: [
                                        IconView(bgColor: "#FCEFFB", icon: "ic_chart"),
                                        IconView(bgColor: "#EFF0FC", icon: "ic_request"),
                                        IconView(bgColor: "#FFF3F3", icon: "ic_credit"),
                                        IconView(bgColor: "#FCF7EC", icon: "ic_transfer"),
                                        IconView(bgColor: "#EEFCF7", icon: "ic_callerid")
                                    ])
                }
                .frame(maxHeight: .infinity, alignment: .center)
            }
        }
        
    }
}


#Preview {
    DashboardView()
}

struct ScrollItemsView: View {
    var title: String = ""
    var items: [IconView] = []
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .foregroundColor(.black)
                    .font(FontConstants.satoshiBold(size: 20))
                Spacer()
                Text("View All")
                    .foregroundColor(.blue)
                    .font(FontConstants.satoshiBold(size: 20))
                    .padding(.horizontal,30)
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(0..<items.count, id: \.self) { index in
                        items[index]
                    }
                }
                .padding(.horizontal, 16)
            }
        }
        .padding(.leading,16)
    }
}

struct TagsGridView: View {
    let items = ["Meeting", "Hangout", "Cooking", "Other", "Weekend"]
    let arrBgColors = ["#FCF7EC","#FCEFFB","#FFF3F3","#ECECEC","#EEFCF7"]
    let arrCircleColors = ["#F59E0C","#701A75","#DC2625","#464646","#196E27"]
    
    var body: some View {
        VStack {
            HStack {
                Text("Category")
                    .foregroundColor(.black)
                    .font(FontConstants.satoshiBold(size: 20))
                Spacer()
            }
            
            LazyVGrid(
                columns: Array(repeating: GridItem(.flexible(), spacing: 16), count: 3),
                spacing: 15
            ) {
                ForEach(items.indices, id: \.self) { index in
                    TagView(
                        label: items[index],
                        bgColor: arrBgColors[index],
                        circleColor: arrCircleColors[index]
                    )
                }
            }
            .padding()
        }
        .padding(.leading,16)
    }
}

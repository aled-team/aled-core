//
//  ItemCellView.swift
//  aled-core
//
//  Created by Nicolas de Garrigues on 16/06/2023.
//

import SwiftUI

struct ItemCellView: View {
    
    let item: Item
    let user: User
    
    var body: some View {
        VStack(spacing: 10) {
            AsyncImage(url: URL(string: "https://image.tmdb.org/t/p/w500\(item.picture)"))
            {image in image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                Rectangle()
                    .foregroundColor(.gray)
            }
            .frame(width: 350, height: 250)
            .clipped()
            .cornerRadius(5)
            
            VStack {
                Text(item.title)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                    .padding(.horizontal)
                Text(item.end_date.formatted(.dateTime.day().month().year().hour().minute()))
                ItemUserView(user: user)
                VStack(alignment: .leading) {
                    Text("Description :")
                        .font(.headline)
                        .padding(.bottom)
                    Text(item.description)
                        .font(.subheadline)
                }
                .padding()
            }
        }
        .padding(.vertical)
        .foregroundColor(.white)
        .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
    }
}

#Preview {
    let previewItem = Item(
        title: "Tondeuse de jardin",
        description: "Je cherche une tondeuse pour mon jardin, pour ce week-end sur Rueil-Malmaison.",
        picture: "/",
        end_date: Date()
    )
    
    let previewUser = User(
        firstname: "Nicolas",
        lastname: "de Garrigues",
        pseudo: "Lainocs",
        picture: "/",
        rateNote: 4.5,
        rateNumber: 43
    )
    return ItemCellView(item: previewItem, user: previewUser)
        .background(.black)
}

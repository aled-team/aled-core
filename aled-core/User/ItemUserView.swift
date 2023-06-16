//
//  ItemUserView.swift
//  aled-core
//
//  Created by Nicolas de Garrigues on 16/06/2023.
//

import SwiftUI

struct ItemUserView: View {
    let user: User
    var body: some View {
        HStack {
            ZStack {
                AsyncImage(url: URL(string: "https://image.tmdb.org/t/p/w500\(user.picture)")) {image in image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                } placeholder: {
                    Circle()
                        .foregroundColor(.gray)
                }
                .frame(width: 70, height: 70)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            }
            VStack(alignment: .leading) {
                Text(user.pseudo)
                HStack {
                    Text("\(user.rateNote, specifier: "%.1f")/5")
                    Text("|")
                    Text("\(user.rateNumber) avis")
                }
            }
            Spacer()
            Image(systemName: "arrowtriangle.forward")
            
        }
        .padding()
    }
}

#Preview {
    let previewUser = User(
        firstname: "Nicolas",
        lastname: "de Garrigues",
        pseudo: "Lainocs",
        picture: "/",
        rateNote: 4.5,
        rateNumber: 43
    )
    return ItemUserView(user: previewUser)
}

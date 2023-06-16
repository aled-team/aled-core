//
//  Item.swift
//  aled-core
//
//  Created by Nicolas de Garrigues on 16/06/2023.
//

import Foundation

struct Item: Identifiable {
    var id = UUID()
    let title: String
    let description: String
    let picture: String
    let end_date: Date
}

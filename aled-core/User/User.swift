//
//  User.swift
//  aled-core
//
//  Created by Nicolas de Garrigues on 16/06/2023.
//

import Foundation

struct User: Identifiable {
    var id = UUID()
    let firstname: String
    let lastname: String
    let picture: String
    let rateNote: Double
    let rateNumber: Int
}

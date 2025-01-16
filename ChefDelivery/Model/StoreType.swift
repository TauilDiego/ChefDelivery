//
//  StoreType.swift
//  ChefDelivery
//
//  Created by Diego Tauil Sousa on 11/11/24.
//

import Foundation

struct StoreType: Identifiable {
    let id: Int
    let name: String
    let logoImage: String
    let headerImage: String
    let location: String
    let stars: Int
    let products: [ProductType]
}

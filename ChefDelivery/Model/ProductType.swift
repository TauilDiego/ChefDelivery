//
//  ProductType.swift
//  ChefDelivery
//
//  Created by Diego Tauil Sousa on 11/11/24.
//

import Foundation

struct ProductType: Identifiable {
    let id: Int
    let name: String
    let description: String
    let image: String
    let price: Double
    
    var formattedPrice: String {
        return "R$ \(price.formatPrice())"
    }
}

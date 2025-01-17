//
//  Double+.swift
//  ChefDelivery
//
//  Created by Diego Tauil Sousa on 11/11/24.
//

import Foundation

extension Double {
    func formatPrice() -> String {
        let formattedString = String(format: "%.2f", self)
        return formattedString.replacingOccurrences(of: ".", with: ",")
    }
}

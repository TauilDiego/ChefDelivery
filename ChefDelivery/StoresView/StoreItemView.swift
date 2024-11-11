//
//  StoreItemView.swift
//  ChefDelivery
//
//  Created by Diego Tauil Sousa on 05/11/24.
//

import SwiftUI

struct StoreItemView: View {
    
    let order: OrderType
    
    var body: some View {
        HStack {
            Image(order.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(25)
                .frame(width: 50, height: 50)
            VStack {
                Text(order.name)
                    .font(.subheadline)
            }
            Spacer()
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    StoreItemView(order: OrderType(id: 1, name: "Monstro Burguer", image: "monstro-burger-logo"))
}

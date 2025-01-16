//
//  ProductDetailHeaderView.swift
//  ChefDelivery
//
//  Created by Diego Tauil on 26/12/24.
//

import SwiftUI

struct ProductDetailHeaderView: View {
    let product: ProductType
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 16) {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                
                Text(product.name)
                    .font(.title)
                    .bold()
                    .padding(.horizontal)
                    .padding(.top)
                
                Text(product.description)
                    .padding(.horizontal)
                
                Text(product.formattedPrice)
                    .font(.title3)
                    .bold()
                    .padding(.horizontal)
            }
        }
    }
}

#Preview {
    ProductDetailHeaderView(product: storesMock[0].products[0])
}

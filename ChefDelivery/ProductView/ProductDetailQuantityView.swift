//
//  ProductDetailQuantityView.swift
//  ChefDelivery
//
//  Created by Diego Tauil on 26/12/24.
//

import SwiftUI

struct ProductDetailQuantityView: View {
    @Binding var productQuantity: Int
    
    var body: some View {
        VStack(spacing: 16) {
            Text("Quantidade")
                .font(.title3)
                .bold()
            
            HStack {
                Button {
                    productQuantity -= 1
                } label: {
                    Image(systemName: "minus.circle.fill")
                        .font(.title3)
                        .bold()
                }
                .disabled(productQuantity <= 0)
                
                Text("\(productQuantity)")
                    .font(.title2)
                    .bold()
                
                Button {
                    productQuantity += 1
                } label: {
                    Image(systemName: "plus.circle.fill")
                        .font(.title3)
                        .bold()
                }


            }
        }
    }
}

#Preview {
    ProductDetailQuantityView(productQuantity: .constant(1))
}

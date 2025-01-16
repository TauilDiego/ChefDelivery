//
//  ProductDetailView.swift
//  ChefDelivery
//
//  Created by Diego Tauil Sousa on 16/11/24.
//

import SwiftUI

struct ProductDetailView: View {
    
    @State var productQuantity: Int = 0
    
    let product: ProductType
    
    fileprivate func ProductDetailView() -> Button<some View> {
        return Button {
            print("botão pressionado!")
        } label: {
            HStack {
                Image(systemName: "cart")
                
                Text("Adicionar ao carrinho")
            }
            .padding(.horizontal, 32)
            .padding(.vertical, 16)
            .font(.title3)
            .bold()
            .background(Color("ColorRed"))
            .foregroundColor(.white)
            .cornerRadius(32)
            .shadow(color: Color("ColorRedDark").opacity(0.5), radius: 10, x: 6, y: 8)
        }
    }
    
    var body: some View {
        
        ProductDetailHeaderView(product: product)
        
        Spacer()
        
        ProductDetailQuantityView(productQuantity: $productQuantity)
        
        Spacer()
        
        ProductDetailView()
    }
}


#Preview {
    ProductDetailView(product: storesMock[0].products[0])
}

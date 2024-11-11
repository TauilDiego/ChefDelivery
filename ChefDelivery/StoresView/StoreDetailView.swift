//
//  StoreDetailView.swift
//  ChefDelivery
//
//  Created by Diego Tauil Sousa on 06/11/24.
//

import SwiftUI

struct StoreDetailView: View {
    
    let store: OrderType
    
    var body: some View {
        Text(store.name)
    }
}

#Preview {
    StoreDetailView(store: storesMock[0])
}

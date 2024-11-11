//
//  StoresContainerView.swift
//  ChefDelivery
//
//  Created by Diego Tauil Sousa on 05/11/24.
//

import SwiftUI

struct StoresContainerView: View {
    let title = "Lojas"
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
            VStack(alignment: .leading, spacing: 30) {
                ForEach(storesMock) { mock in
                    NavigationLink {
                        StoreDetailView(store: mock)
                    } label: {
                        StoreItemView(order: mock)
                    }
                }
            }
            .foregroundColor(.black)
        }
        .padding(20)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    StoresContainerView()
}

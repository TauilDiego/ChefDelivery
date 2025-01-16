//
//  StoresContainerView.swift
//  ChefDelivery
//
//  Created by Diego Tauil Sousa on 05/11/24.
//

import SwiftUI

struct StoresContainerView: View {
    let title = "Lojas"
    @State private var ratingFilter = 0
    
    var filteredStores: [StoreType] {
        return storesMock.filter { store in
            store.stars >= ratingFilter
        }
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(title)
                    .font(.headline)
                
                Spacer()
                
                Menu {
                    
                    Button {
                        ratingFilter = 0
                    } label: {
                        Text("Limpar Filtro")
                    }
                    
                    Divider()
                    
                    ForEach(1...5, id: \.self) { rating in
                        Button {
                            ratingFilter = rating
                        } label: {
                            Text("\(rating) Estrelas ou mais")
                        }
                        .disabled(ratingFilter == rating)

                    }
                } label: {
                    HStack {
                        Image(systemName: "list.star")
                    }
                    
                }
                
                
                
            }
            .padding(.bottom, 22)
            VStack(alignment: .leading, spacing: 30) {
                
                if filteredStores.isEmpty {
                    Text("Nenhum Resultado encontrado")
                        .font(.title2)
                        .bold()
                        .foregroundStyle(Color("ColorRed"))
                        .padding(.vertical, 32)
                        .frame(maxWidth: .infinity)
                } else {
                    ForEach(filteredStores) { mock in
                        NavigationLink {
                            StoreDetailView(store: mock)
                        } label: {
                            StoreItemView(store: mock)
                        }
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

//
//  ProductCard.swift
//  Tennis.Shop
//
//  Created by liwaa on 25/05/2023.
//

import SwiftUI

struct ProductCard: View {
    @EnvironmentObject var cartManager:CartManager
    var product : Product
    var body: some View {
        ZStack(alignment: .topTrailing){
            ZStack(alignment: .bottom)
            {
                Image(product.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 180)
                    .scaledToFit()
                
                VStack(alignment: .leading)
                {
                    Text(product.name)
                        .bold()
                    
                    Text("\(product.price)$")
                        .font(.caption)
                }
                .padding()
                .frame(width: 180, height: 50 , alignment: .leading)
                .background(.ultraThinMaterial.opacity(2.0))
                .cornerRadius(20)
            }
            .frame(width: 180 , height: 270)
            .shadow(radius: 3)
            .background(.ultraThickMaterial)
            Button {
                cartManager.addToCart(product: product)
                
            } label: {
                Image(systemName: "plus")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.red)
                    .cornerRadius(50)
                    .padding()
            }
        }
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: productList[0])
            .environmentObject(CartManager())
    }
}

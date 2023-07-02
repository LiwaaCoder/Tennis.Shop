//
//  ProductRow.swift
//  Tennis.Shop
//
//  Created by liwaa on 25/05/2023.
//

import SwiftUI

struct ProductRow: View {
    @EnvironmentObject var cartManager : CartManager
    var product : Product
    var body: some View {
        
        HStack(spacing:20)
        {
            Image(product.imageURL)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80)
                .cornerRadius(15)
            VStack(alignment: .leading , spacing: 10) {
                Text(product.name)
                    .bold()
                Text("$\(product.price)")
                    .bold()
                
            }
            Spacer()
        
            Image(systemName: "trash")
                .foregroundColor(Color(hue: 1.0, saturation: 0.8, brightness: 0.8))
                .onTapGesture {
                    cartManager.removeFromCart(product: product)
                }
            
            
            
            
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity , alignment: .leading)
        
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: productList[2])
            .environmentObject(CartManager())
    }
}

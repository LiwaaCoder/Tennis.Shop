//
//  Cart.swift
//  Tennis.Shop
//
//  Created by liwaa on 25/05/2023.
//

import SwiftUI

struct Cart: View {
    @EnvironmentObject var cartManager:CartManager
    var body: some View {
        ScrollView{
            if cartManager.products.count > 0{
                ForEach(cartManager.products, id: \.id){
                    product in ProductRow(product: product)
                }
                
                HStack{
                    Text("You cart Amount : ")
                    Spacer()
                    Text("$\(cartManager.total).00")
                        .bold()
                }
                .padding()
                
                PayemntButton(action: {})
                    .padding()
                
            }
            else{
                Text("Your Cart is Empty")
            }
        }
        .navigationTitle(Text("MyCart"))
        .padding(.top)
    }
}

struct Cart_Previews: PreviewProvider {
    static var previews: some View {
        Cart()
            .environmentObject(CartManager())
    }
}

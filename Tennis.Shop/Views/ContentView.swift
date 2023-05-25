//
//  ContentView.swift
//  Tennis.Shop
//
//  Created by liwaa on 23/05/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartmanager = CartManager()
    var c = [GridItem(.adaptive(minimum: 160),spacing: 20)]
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: c , spacing : 18 ){
                    ForEach(productList, id: \.id){
                        product in ProductCard(product: product)
                            .environmentObject(cartmanager)
                    }
                }
                .padding()
            }
            .navigationTitle(Text("Wilson Rackets Shop"))
            .toolbar{
                NavigationLink{
                    Cart()
                        .environmentObject(cartmanager)
                }label: {
                    CartButton(numOfProducts: cartmanager.products.count)
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

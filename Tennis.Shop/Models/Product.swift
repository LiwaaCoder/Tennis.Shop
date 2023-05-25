//
//  Product.swift
//  Tennis.Shop
//
//  Created by liwaa on 23/05/2023.
//

import Foundation

struct Product : Identifiable{
    var id = UUID()
    var name : String
    var image : String
    var price : Int
    
}



var productList = [Product(name: "Wilson Ultra 98", image: "wilson1", price: 180) ,
                   Product(name: "Wilson Ultra 102", image: "wilson2", price: 160) ,
                   Product(name: "Wilson Ultra 97", image: "wilson3", price: 150) ,
                   Product(name: "Wilson Ultra 103", image: "wilson4", price: 180) ,
                   Product(name: "Wilson Clash", image: "wilson5", price: 190) ,
                   Product(name: "Wilson Blade ", image: "wilson6", price: 220)]


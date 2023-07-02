//
//  Product.swift
//  Tennis.Shop
//
//  Created by liwaa on 23/05/2023.
//

import Foundation
import FirebaseStorage

struct Product : Identifiable{
    var id = UUID()
    var name : String
    var imageURL: String
    var price : Int
}


var productList = [
    Product(name: "Wilson Ultra 98", imageURL: "https://firebasestorage.googleapis.com/v0/b/tennis-shop-84538.appspot.com/o/wilson3.png?alt=media&token=3a2731f3-a179-4ee7-ad85-43d070ff42cf", price: 180),
    Product(name: "Wilson Ultra 102", imageURL: "https://firebasestorage.googleapis.com/v0/b/tennis-shop-84538.appspot.com/o/wilson2.png?alt=media&token=cf1d7aae-e25f-46dc-a8b2-76d67c27db80", price: 160),
    Product(name: "Wilson Ultra 97", imageURL: "", price: 150),
    Product(name: "Wilson Ultra 103", imageURL: "", price: 180),
    Product(name: "Wilson Clash", imageURL: "", price: 190),
    Product(name: "Wilson Blade", imageURL: "", price: 220)
]




import Foundation
import FirebaseStorage
import SwiftUI




struct Product: Identifiable {
    var id = UUID()
    var name: String
    var imageURL: String
    var price: Int
}


var productList = [
    Product(name: "Wilson Ultra 98", imageURL: "https://firebasestorage.googleapis.com/v0/b/tennis-shop-84538.appspot.com/o/wilson2.png?alt=media&token=cf1d7aae-e25f-46dc-a8b2-76d67c27db80", price: 180),
    Product(name: "Wilson Ultra 102", imageURL: "https://firebasestorage.googleapis.com/v0/b/tennis-shop-84538.appspot.com/o/wilson3.png?alt=media&token=3a2731f3-a179-4ee7-ad85-43d070ff42cf", price: 160),
    Product(name: "Wilson Ultra 97", imageURL: "https://firebasestorage.googleapis.com/v0/b/tennis-shop-84538.appspot.com/o/wilson4.png?alt=media&token=cf0d78b2-aabf-48fc-87e2-ccd6e43172bf", price: 150),
    Product(name: "Wilson Ultra 103", imageURL: "https://firebasestorage.googleapis.com/v0/b/tennis-shop-84538.appspot.com/o/wilson5.png?alt=media&token=d61172d7-a151-4b7f-bbcd-2847eb18fc10", price: 180),
    Product(name: "Wilson Clash", imageURL: "https://firebasestorage.googleapis.com/v0/b/tennis-shop-84538.appspot.com/o/wilson6.png?alt=media&token=40ce7f0b-ac7c-486a-a22d-46759be0463c", price: 190),
    Product(name: "Wilson Blade", imageURL: "https://firebasestorage.googleapis.com/v0/b/tennis-shop-84538.appspot.com/o/wilson_01.png?alt=media&token=03b8724c-4fdb-4154-8c10-36676139f218", price: 220)
]


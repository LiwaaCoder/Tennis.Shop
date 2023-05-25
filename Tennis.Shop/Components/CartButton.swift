//
//  CartButton.swift
//  Tennis.Shop
//
//  Created by liwaa on 25/05/2023.
//

import SwiftUI

struct CartButton: View {
    
    var numOfProducts: Int
    var body: some View {
        ZStack(alignment: .topTrailing)
        {
             Image(systemName: "cart")
                .padding(.top , 5)
            
            if(numOfProducts > 0)
            {
                Text("\(numOfProducts)")
                    .font(.caption2).bold()
                    .foregroundColor(.white)
                    .frame(width: 15 , height: 15)
                    .background(Color(hue: 1.0, saturation: 0.8, brightness: 0.8))
                    .cornerRadius(25)
            }
            
        }
    }
}

struct CartButton_Previews: PreviewProvider {
    static var previews: some View {
        CartButton(numOfProducts: 1)
    }
}

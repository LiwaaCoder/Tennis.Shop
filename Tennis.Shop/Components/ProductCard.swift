import SwiftUI
import SDWebImageSwiftUI

struct ProductCard: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom) {
                WebImage(url: URL(string: product.imageURL))
                    .resizable()
                    .placeholder {
                        Color.gray
                    }
                    .indicator(.activity)
                    .transition(.fade(duration: 0.5))
                    .aspectRatio(4/5, contentMode: .fit)
                    .cornerRadius(20)
                    .frame(width: 180)
                
                VStack(alignment: .center) {
                    Text(product.name)
                        .bold()
                        .foregroundColor(.black)
                    
                    Text("$\(product.price)")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                .padding()
                .frame(width: 180)
                .background(Color.white.opacity(0.8))
                .cornerRadius(20)
            }
            .frame(width: 180, height: 270)
            .shadow(radius: 3)
            
            Button(action: {
                cartManager.addToCart(product: product)
            }) {
                Image(systemName: "plus")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(Color.red)
                    .clipShape(Circle())
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

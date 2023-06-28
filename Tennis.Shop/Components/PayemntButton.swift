//
//  PayemntButton.swift
//  Tennis.Shop
//
//  Created by liwaa on 29/06/2023.
//

import SwiftUI
import PassKit


struct PayemntButton: View {
    var action:() -> Void
    var body: some View {
        Representable(action: action)
            .frame(minWidth: 100 , maxWidth: 400)
            .frame(height: 45)
            .frame(maxWidth: .infinity)
    }
}

struct PayemntButton_Previews: PreviewProvider {
    static var previews: some View {
        PayemntButton(action: {})
    }

}

extension PayemntButton{
    struct Representable: UIViewRepresentable{
       var action:() -> Void
        func makeCoordinator() -> Coordinator {
            Coordinator(action:action)
        }
        func makeUIView(context: Context) -> some UIView {
            context.coordinator.button
        }
        
        func updateUIView(_ uiView: UIViewType, context: Context) {
            context.coordinator.action=action
        }
    }
    class Coordinator:NSObject{
        var action:() -> Void
        var button = PKPaymentButton(paymentButtonType: .checkout, paymentButtonStyle: .automatic)
        
        init(action: @escaping () -> Void){
            
            self.action=action
            super.init()
            
            button.addTarget(self, action:#selector(callback(_:)), for: .touchUpInside)
        }
        
        @objc
        func callback(_ sender: Any){
            action()
        }
        
        
        
        
    }
}

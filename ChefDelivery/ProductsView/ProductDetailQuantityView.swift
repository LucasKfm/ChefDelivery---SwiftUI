//
//  ProductDetailQuantityView.swift
//  ChefDelivery
//
//  Created by Lucas on 25/08/24.
//

import SwiftUI

struct ProductDetailQuantityView: View {

    @State private var productQuantity = 1

    var body: some View {
        VStack(spacing: 16) {
            Text("Quantidade")
                .font(.title3)
                .bold()

            HStack {
                Button {
                    if productQuantity > 1 {
                        productQuantity -= 1
                    }
                } label: {
                    Image(systemName: "minus.circle.fill")
                        .font(.title)
                        .bold()
                        .foregroundColor(Color("ColorRed"))
                }

                Text("\(productQuantity)")
                    .font(.title2)
                    .bold()

                Button {
                    productQuantity += 1
                } label: {
                    Image(systemName: "plus.circle.fill")
                        .font(.title)
                        .bold()
                        .foregroundColor(Color("ColorRed"))
                }

            }

        }
        .padding(.vertical)
    }
}

struct ProductDetailQuantityView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailQuantityView()
    }
}

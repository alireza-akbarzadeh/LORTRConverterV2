//
//  ExchangeRate.swift
//  LORTRConverterV2
//
//  Created by ALIREZA AKBARZADEH  on 12/23/1403 AP.
//

import SwiftUI

struct ExchangeRate: View {

    let text: String

    let leftImage: ImageResource
    let rightImage: ImageResource

    var body: some View {

        HStack {

            Image(leftImage)
                .resizable()
                .scaledToFit().frame(height: 33)

            Text(text)

            Image(rightImage)
                .resizable()
                .scaledToFit().frame(height: 33)

        }
    }
}

#Preview {
    ExchangeRate(
        text: "1 Silver pices = 4 gold peenies" ,leftImage: .silverpiece, rightImage: .goldpenny)
}

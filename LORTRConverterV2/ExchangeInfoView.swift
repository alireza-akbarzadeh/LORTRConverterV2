//
//  ExchangeInfoView.swift
//  LORTRConverterV2
//
//  Created by ALIREZA AKBARZADEH  on 12/23/1403 AP.
//

import SwiftUI

struct ExchangeInfoView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {

            Image(.parchment).resizable().ignoresSafeArea().background(.brown)

            VStack {

                Text("Exchange Rates")
                    .font(.largeTitle)
                    .tracking(3)
                    .fontWeight(.bold)

                Text(
                    "Here at the prancing pony, we are happy to offer you a palce where you can exchange all the known currencies in the entire world except one.we used to take brandy Bucks, but after finding out that if was oersn insted of a piece of paper we realized it had no value touse. below is a simple guide to our currency exchange rates:"
                )
                .font(.title3).padding()

                ExchangeRate(
                    text: "1 Gold piece = 4 Gold pennies",
                    leftImage: .goldpiece,
                    rightImage: .goldpenny
                )
                ExchangeRate(
                    text: "1 Gold penny = 4 Silver Piecs",
                    leftImage: .goldpenny,
                    rightImage: .silverpiece
                )
                ExchangeRate(
                    text: "1 Silver Piece = 4 Silver Pennies",
                    leftImage: .silverpiece,
                    rightImage: .silverpenny
                )
                ExchangeRate(
                    text: "1 Silver penny = 100 copper pennies",
                    leftImage: .silverpenny,
                    rightImage: .copperpenny
                )

                Button("Done") {
                    dismiss()

                }.buttonStyle(.borderedProminent).tint(
                    .brown.mix(with: .black, by: 0.2)
                )
                .font(.title).padding().foregroundStyle(.white)

            }
            .foregroundStyle(.black)

        }
    }
}

#Preview {
    ExchangeInfoView()
}

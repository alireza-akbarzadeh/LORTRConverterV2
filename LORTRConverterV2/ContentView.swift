//
//  ContentView.swift
//  LORTRConverterV2
//
//  Created by ALIREZA AKBARZADEH  on 12/20/1403 AP.
//

import SwiftUI

struct ContentView: View {

    @State var showExchangeInput: Bool = false

    @State var leftAmount: String = ""

    @State var rightAmount: String = ""

    var body: some View {
        ZStack {
            Image(.background)
                .resizable().ignoresSafeArea()

            VStack {
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit().frame(height: 200)

                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)

                HStack {

                    VStack {

                        HStack {
                            Image(.silverpiece).resizable().scaledToFit().frame(
                                height: 33)

                            Text("Silver Piece")
                                .font(.headline)
                                .foregroundStyle(.white)

                        }

                        TextField("Amount", text: $leftAmount)
                            .textFieldStyle(.roundedBorder)
                    }
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundStyle(.white).symbolEffect(.pulse)

                    VStack {

                        HStack {
                            Text("Gold piece")
                                .font(.headline)
                                .foregroundStyle(.white)

                            Image(.goldpiece).resizable().scaledToFit().frame(
                                height: 33)
                        }

                        TextField("Amount", text: $rightAmount)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)

                    }
                }.padding().background(.black.opacity(0.5))

                Spacer()
                HStack {

                    
                    Spacer()

                    Button {
                        showExchangeInput.toggle()

                    } label: {
                        Image(systemName: "info.circle.fill")

                            .font(.largeTitle)
                            .foregroundStyle(.white)

                    }
                    .padding(.trailing)
                    .sheet(isPresented: $showExchangeInput){
                        ExchangeInfoView()
                    }

                }
            }

        }
    }
}

#Preview {
    ContentView()
}

//
//  ContentView.swift
//  Bullseye
//
//  Created by Cole Phillips on 2022-10-21.
//

import SwiftUI

struct ContentView: View {
    @State private var alertIsVisible = false
    @State private var sliderValue = 50.0
    @State private var game: Game = .init()

    var body: some View {
        VStack {
            VStack {
                Text("🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                    .bold()
                    .kerning(1)
                    .multilineTextAlignment(.center)
                    .lineSpacing(4)
                    .font(.title2)
            }

            Text(String(game.target))
                .font(.largeTitle)
                .kerning(-1)
                .fontWeight(.black)
            HStack {
                Text("1")
                    .bold()
                Slider(value: $sliderValue, in: 1.0 ... 100)
                Text("100")
                    .bold()
            }
            Button(action: {
                alertIsVisible = true
            }) {
                Text("Hit me")
            }
            .alert("Hello!!", isPresented: $alertIsVisible) {
                Button("Awesome!") {}
            } message: {
                let roundedValue: Int = .init(sliderValue.rounded())
                Text("The sliders value is: \(roundedValue).\n" + "You scored \(game.points(sliderValue: roundedValue)) points this round!")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
    }
}

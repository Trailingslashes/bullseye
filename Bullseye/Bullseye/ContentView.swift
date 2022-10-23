//
//  ContentView.swift
//  Bullseye
//
//  Created by Cole Phillips on 2022-10-21.
//

import SwiftUI

struct ContentView: View {
    @State private var alertIsVisible: Bool = false
    @State private var sliderValue: Double = 50.0

    var body: some View {
        VStack {
            VStack {
                Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                    .bold()
                    .kerning(1)
                    .multilineTextAlignment(.center)
                    .lineSpacing(4)
                    .font(.title2)
            }

            Text("89")
                .font(.largeTitle)
                .kerning(-1)
                .fontWeight(.black)
            HStack {
                Text("1")
                    .bold()
                Slider(value: self.$sliderValue, in: 1.0 ... 100)
                Text("100")
                    .bold()
            }
            Button(action: {
                self.alertIsVisible = true
            }) {
                Text("Hit me")
            }
            .alert("Hello!!", isPresented: $alertIsVisible) {
                Button("Awesome!") {}
            } message: {
                var roundedValue: Int = .init(self.sliderValue.rounded())
                Text("The sliders value is: \(roundedValue)")
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

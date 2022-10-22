//
//  ContentView.swift
//  Bullseye
//
//  Created by Cole Phillips on 2022-10-21.
//

import SwiftUI


struct ContentView: View {
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
                Slider(value: .constant(50), in: 1.0...100)
                Text("100")
                    .bold()
            }
            Button(action: {}) {
                Text("Hit me")
                    
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

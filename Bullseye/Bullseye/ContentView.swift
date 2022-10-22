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
            }
            Text("89")
            HStack {
                Text("1")
                Slider(value: .constant(50), in: 1.0...100)
                Text("100")
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

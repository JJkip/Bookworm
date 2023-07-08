//
//  ContentView.swift
//  Bookworm
//
//  Created by Joseph Langat on 06/07/2023.
//

import SwiftUI

struct PushButton: View {
    let title: String
    @Binding var isOn: Bool
    
    var onColors = [Color.purple, Color.pink]
    var offColors = [Color(white: 0.6), Color(white: 0.4)]
    
    var body: some View {
        Button(title) {
            isOn.toggle()
        }
        .padding()
        .background(
            LinearGradient(colors: isOn ? onColors : offColors, startPoint: .top, endPoint: .bottom)
        )
        .foregroundColor(.white)
        .clipShape(Capsule())
        .shadow(radius:  isOn ? 0 : 5)
    }
}

struct ContentView: View {
    @State private var rememberMe = false
    @AppStorage("notes") private var notes = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $notes)
                    .navigationTitle("Notes")
                    .padding()
                PushButton(title: "Remember Me", isOn: $rememberMe)
                Text(rememberMe ? "On" : "off")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
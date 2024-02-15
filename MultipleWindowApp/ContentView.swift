//
//  ContentView.swift
//  MultipleWindowApp
//
//  Created by Vinoth Vino on 15/02/24.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.openWindow) private var openWindow
    
    var body: some View {
        VStack(spacing: 60) {
            Card(image: "img1", buttonTitle: "Lake Tahoe") {
                openWindow(id: "lake-tahoe")
            }
            
            Card(image: "img2", buttonTitle: "Kluane National Park") {
                openWindow(id: "kluane-national-park")
            }
        }
        .padding()
    }
}

struct Card: View {
    let image: String
    let buttonTitle: String
    let onTapped: () -> Void
    
    var body: some View {
        VStack {
            Image(image)
                .resizable()
                .frame(width: 200, height: 200)
                .scaledToFill()
                .clipShape(.rect(cornerRadius: 20))
            
            Button("Open \(buttonTitle)", action: onTapped)
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}

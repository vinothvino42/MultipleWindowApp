//
//  ImageWindows.swift
//  MultipleWindowApp
//
//  Created by Vinoth Vino on 15/02/24.
//

import SwiftUI

struct LakeTahoe: View {
    var body: some View {
        ImageLayout(image: "img1", location: "Lake Tahoe, United States", credit: "Fabian Quintero")
    }
}

struct KluaneNationalPark: View {
    var body: some View {
        ImageLayout(image: "img2", location: "Kluane National Park", credit: "Kalen Emsley")
    }
}

fileprivate struct ImageLayout: View {
    @Environment(\.dismissWindow) private var dismissWindow
    
    let image: String
    let location: String
    let credit: String
    
    var body: some View {
        ZStack {
            Image(image)
                .resizable()
                .scaledToFill()
            
            VStack(spacing: 30) {
                VStack {
                    Text(location)
                        .font(.largeTitle)
                    Text("Photo by \(credit)")
                        .font(.subheadline)
                }
                .padding()
                .background(.ultraThinMaterial)
                .clipShape(.rect(cornerRadius: 20))
                
                Button("Dismiss") {
                    dismissWindow()
                }
            }
        }
    }
}

#Preview {
    LakeTahoe()
}

#Preview {
    KluaneNationalPark()
}

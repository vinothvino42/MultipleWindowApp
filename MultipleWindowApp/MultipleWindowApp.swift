//
//  MultipleWindowApp.swift
//  MultipleWindowApp
//
//  Created by Vinoth Vino on 15/02/24.
//

import SwiftUI

@main
struct MultipleWindowApp: App {
    var body: some Scene {
        WindowGroup(id: "initial-window") {
            ContentView()
        }
        .defaultSize(width: 800, height: 1000)
        
        WindowGroup("Lake Tahoe", id: "lake-tahoe") {
            LakeTahoe()
        }
        
        WindowGroup("Kluane National Park", id: "kluane-national-park") {
            KluaneNationalPark()
        }
    }
}

//
//  ContentView.swift
//  Exercise3EmojiFinder
//
//  Created by Riza Adi Kurniawan on 03/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            EmojiFinder()
                .tabItem {
                    Label("Emoji", systemImage: "poweroutlet.type.c.square")
                }
            Text("Map View")
                .tabItem {
                    Label("Location", systemImage: "binoculars.circle")
                }
            Text("Settings View")
                .tabItem {
                    Label("Settings", systemImage: "gear.circle")
                }
        }
    }
}

#Preview {
    ContentView()
}

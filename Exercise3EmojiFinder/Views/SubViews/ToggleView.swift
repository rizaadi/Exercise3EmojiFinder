//
//  ToggleView.swift
//  Exercise3EmojiFinder
//
//  Created by Riza Adi Kurniawan on 03/02/24.
//

import SwiftUI

struct ToggleView: View {
    @State private var isToggleOn: Bool = false
    
    var body: some View {
        VStack {
            Toggle(isOn: $isToggleOn, label: {
                Text("Switch toggle")
            })
            .padding()
            
            Text(isToggleOn ? "Toggle is ON" : "Toggle is OFF")
        }
    }
}

#Preview {
    ToggleView()
}

//
//  SegmentedView.swift
//  Exercise3EmojiFinder
//
//  Created by Riza Adi Kurniawan on 03/02/24.
//

import SwiftUI

struct SegmentedView: View {
    var emoji: Emoji
    @State private var selectedTab = 0
    
    var body: some View {
        VStack {
            Picker("Options", selection: $selectedTab){
                Text("First")
                    .tag(0)
                
                Text("Second")
                    .tag(1)
                
                Text("Third")
                    .tag(2)
            }
            .pickerStyle(SegmentedPickerStyle())
            
            switch selectedTab {
            case 0:
                EmojiRow(emoji: emoji)
            case 1:
                Text("Second segment selected")
            default:
                Text("Third segment selected")
            }
            Spacer()
        }.padding()
    }
}


#Preview {
    SegmentedView(emoji: Emoji.emojiTestData[0])
}

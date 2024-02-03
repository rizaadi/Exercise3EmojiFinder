//
//  EmojiDetails.swift
//  Exercise3EmojiFinder
//
//  Created by Riza Adi Kurniawan on 03/02/24.
//

import SwiftUI

struct EmojiDetails: View {
    let emojiItem: Emoji
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .leading, spacing: 20){
                    Text("Emoji name: \(emojiItem.name)")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                    
                    Text(emojiItem.description)
                        .multilineTextAlignment(.leading)
                }
                .padding(.horizontal, 20)
                .frame(maxWidth: 640, alignment: .leading)
                
                EmojiFacts()
                    .padding()
            }
        }
    }
}

#Preview {
    EmojiDetails(emojiItem: Emoji.emojiTestData[2])
}

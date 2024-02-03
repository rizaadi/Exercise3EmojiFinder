//
//  EmojiHeaderView.swift
//  Exercise3EmojiFinder
//
//  Created by Riza Adi Kurniawan on 03/02/24.
//

import SwiftUI

struct EmojiHeaderView: View {
    var emoji: Emoji
    @State private var isAnimating: Bool = false
    var body: some View {
        ZStack {
            ColorUtility.randomColor()
            Text(emoji.emoji)
                .font(.system(size: 224))
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.5), radius: 8, x: 6, y: 8)
                .scaleEffect(isAnimating ? 1.0 : 0.6)
        }
        .frame(height: 440)
        .onAppear{
            withAnimation(.easeInOut(duration: 0.5)) {
                isAnimating.toggle()
            }
        }
    }
}

#Preview {
    EmojiHeaderView(emoji:  Emoji.emojiTestData[1])
}

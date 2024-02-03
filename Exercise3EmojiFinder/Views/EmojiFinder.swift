//
//  EmojiFinder.swift
//  Exercise3EmojiFinder
//
//  Created by Riza Adi Kurniawan on 03/02/24.
//

import SwiftUI

struct EmojiFinder: View {
    @State private var searchText: String = ""
    @State private var isRedacted: Bool = true
    @State private var emojis: [Emoji] = EmojiProvider.allEmojis()
    
    private var emojiDataResults: [Emoji] {
        guard !searchText.isEmpty else { return emojis}
        
        return emojis.filter{
            $0.name.lowercased().contains(searchText.lowercased())
        }
    }
    
    private func addNewEmojiRow() {
        isRedacted = true
        let newEmojiRow = Emoji.emojiTestData[2]
        emojis.insert(newEmojiRow, at: 0)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3 ){
            isRedacted = false
        }
    }
    var body: some View {
        NavigationStack{
            List(emojiDataResults){ emoji in
                NavigationLink {
                    EmojiDetails(emojiItem: emoji)
                } label: {
                    if isRedacted {
                        EmojiRow(emoji: emoji)
                            .redacted(reason: .placeholder)
                    } else {
                        EmojiRow(emoji: emoji)
                    }
                }
            }
        }.navigationTitle("Emoji")
            .searchable(
                text: $searchText,
                placement: .navigationBarDrawer(displayMode: .always),
                prompt: "What emoji's that you're looking for?"
            )
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    isRedacted = false
                }
            }
            .refreshable {
                addNewEmojiRow()
            }
            .overlay {
                if emojiDataResults.isEmpty {
                    ContentUnavailableView.search(text: searchText)
                }
            }
    }
    
}

#Preview {
    EmojiFinder()
}

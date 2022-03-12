//  EmojisDetailView.swift
//  Deacon Emojis


import SwiftUI

struct EmojisDetailView: View {
    var DetiailViewEmojis : Emojis
    var body: some View {
        EmojiDetailPageMain(thisEmojis: DetiailViewEmojis)
    }
}







struct EmojiDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EmojisDetailView(DetiailViewEmojis: emojisList[0])
    }
}

//
//  EmojisDetailView.swift
//  Deacon Emojis
//
//  Created by 张开新 on 2/12/22.
//

import SwiftUI

struct EmojisDetailView: View {
    let emoji:Emoji
    
    var body: some View {
        VStack {
            Image(emoji.index)
                .resizable()
                .frame(width: 200, height: 200)
            Text(emoji.name)
                .foregroundColor(Color.yellow)
            Spacer()
        }
      }
}

struct EmojisDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EmojisDetailView(
        emoji: Emoji(
            id:0,
            name:"happy",
            index: "01"
        )
        )
    }
}

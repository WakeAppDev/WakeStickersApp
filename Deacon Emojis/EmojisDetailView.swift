//
//  EmojisDetailView.swift
//  Deacon Emojis
//
//  Created by 张开新 on 2/12/22.
//

import SwiftUI

struct EmojisDetailView: View {
    let Emoji:emoji
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct EmojisDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EmojisDetailView(
        Emoji: <#T##emoji#>(
            id:0,
            name:"happy"
        )
        )
    }
}

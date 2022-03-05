//
//  EmojisCard.swift
//  Deacon Emojis
//
//  Created by JESSICA on 2/21/22.
//

import SwiftUI

struct EmojisCard: View {
    var emojis : Emojis
    var body: some View {
        ZStack(alignment:.bottom){
            Image(emojis.Index)
                .resizable()
                .cornerRadius(20)
                .frame(width:120)
                .scaledToFit()

        }
        .frame(width:90, height: 160)
        .shadow(radius:5)
    }

}
struct EmojisCard_Previews: PreviewProvider {
    static var previews: some View {
        EmojisCard(emojis: emojisList[0])
    }
}

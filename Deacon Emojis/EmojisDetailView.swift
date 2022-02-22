//
//  EmojisDetailView.swift
//  Deacon Emojis
//
//  Created by 张开新 on 2/12/22.
//

import SwiftUI

struct EmojisDetailView: View {
    var emojis : Emojis

    var body: some View {

        VStack (alignment: .center, spacing: 8.0){
            Image(emojis.Index)
                .resizable(resizingMode:.stretch)
                .aspectRatio(contentMode:.fit)
                .frame(width:140, height: 180)
            
            Text(emojis.name.uppercased())
                .font(.title)
                .fontWeight(.heavy)
                .frame(maxWidth:.infinity, alignment:.center)
        }
        
        
            }
        }

struct EmojiDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EmojisDetailView(emojis: emojisList[0])
}
}

//
//  ContentView.swift
//  Deacon Emojis
//
//  Created by 张开新 on 2/12/22.
//

import SwiftUI

struct emoji{
    let name: String
    
}

struct ContentView: View {
    var emojisList = [
        emoji(name: "happy"),
        emoji(name: "sad"),
        emoji(name: "surprised"),
        emoji(name: "angry"),
    ]
    var body: some View {
        NavigationView{
        List(emojisList, id: \.name) { emoji in
            NavigationLink(destination: EmojisDetailView(Emoji:emoji)){
              HStack {
                Text(emoji.name)
              }
        }
        }.navigationTitle("Deacon's Emojis")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

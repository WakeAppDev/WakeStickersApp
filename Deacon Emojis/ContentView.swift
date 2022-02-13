//
//  ContentView.swift
//  Deacon Emojis
//
//  Created by 张开新 on 2/12/22.
//

import SwiftUI

//create an object class called "emoji"
struct Emoji: Identifiable{
    let id: Int
    
    let name: String
    let index: String
}

struct ContentView: View {
    //let’s make our variable a @State variable so that as soon as we change its value our view updates automatically
    @State var emojisList = [
        Emoji(id:0, name: "happy", index:"01"),
        Emoji(id:1, name: "sad", index:"02"),
        Emoji(id:2, name: "surprised", index:"03"),
        Emoji(id:3, name: "angry", index:"04"),
    ]
    var body: some View {
        NavigationView{
        List(emojisList) { Emoji in
            NavigationLink(destination: EmojisDetailView(emoji:Emoji)){
              VStack {
                Text(Emoji.name)
              }
        }
        }.navigationTitle("Deacon's Emojis")
                .toolbar {
                   ToolbarItemGroup(placement: .navigationBarTrailing) {
                                    Button("Press") {
                                        
                                    }
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

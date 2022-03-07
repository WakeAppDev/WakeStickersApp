//  ContentView.swift
//  Deacon Emojis

import SwiftUI

//create an object class called "emoji"
//struct Emoji: Identifiable{
//    let id: Int
//    let name: String
//    let index: String
//}

struct ContentView: View {
    var body: some View {
        //Create the Tab Bar
        TabView{
            TabView1().tabItem(){
                Image(systemName:"face.smiling")
                Text("Stickers")
            }
            TabView2().tabItem(){
                Image(systemName:"info.circle")
                Text("About")
            }
            
        }
    }
}



















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

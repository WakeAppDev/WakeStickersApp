//  ContentView.swift
//  Deacon Emojis

import SwiftUI

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
            
        }.foregroundColor(Color("New Gold"))
    }
}



















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

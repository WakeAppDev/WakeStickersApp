//  ContentView.swift
//  Deacon Emojis

import SwiftUI


struct ContentView: View {
    
    init() {
        UITabBar.appearance().barTintColor = .white
        UITabBar.appearance().unselectedItemTintColor = .black
        UITabBar.appearance().isOpaque = false
    }
    
    var body: some View {
        //Create the Tab Bar
        TabView{
            TabView1().tabItem(){
                Image(systemName:"theatermasks")
                Text("Stickers")
            }
            TabView2().tabItem(){
                Image(systemName:"info")
                Text("About")
                    
            }
            
        }.accentColor(Color("New Gold"))
    }
}



















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

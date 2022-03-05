

import SwiftUI

struct TabView1: View {
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 5)]

    var body: some View {
   NavigationView {
            ScrollView{
                LazyVGrid(columns: columns, spacing: 15){
                ForEach(emojisList) {Emojis in
                    NavigationLink(destination: EmojisDetailView(emojis:Emojis)) {
                        VStack {
                            EmojisCard(emojis: Emojis)
                        }
                    }
                }
            }
            .padding()
            }
            .navigationTitle ("Deacon's Emojis")
            .toolbar {
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        Button("Press") {
                    }
                }
            }
        }
    }
}
















struct TabView1_Previews: PreviewProvider {
    static var previews: some View {
        TabView1()
            .previewLayout(.device)
            .previewDevice("iPhone 13")
    }
}


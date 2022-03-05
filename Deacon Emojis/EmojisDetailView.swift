//  EmojisDetailView.swift
//  Deacon Emojis


import SwiftUI

struct EmojisDetailView: View {
    var emojis : Emojis
    
    var body: some View {
        NavigationView{
            ZStack {
//            LinearGradient(gradient: Gradient(colors: [.white,.white]),
//                           startPoint: .topLeading,
//                           endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
            
                VStack (alignment: .center, spacing: 0.0){
                    //NavigationLink (destination: imageDisplay(emojis: emojis)) {
                        emojiDisplay(emojis: emojis)
                    //}
                       
                    HStack{
                        Divider()
                        ScrollView(.horizontal) {
                            HStack (spacing: 10) {
                                    ForEach(0..<10) {
                                        index in SquareView(label: "\(index)")
                                    }
                            }.padding()
                        }.frame(height: 100)
                    }
                }
            } .navigationBarTitle(emojis.name.uppercased(), displayMode: .automatic)
                .toolbar {
                    Button(action: {
                        if 2 > 1 {}
                    }, label: {
                        VStack {
                            Image(systemName: "square.and.arrow.up") //使用SF符号的引用方法
                        }
                    })
                }
        }
    }
}
        
        
struct SquareView: View {
    @State
    var label: String
    var body: some View {
        Rectangle().fill(Color.orange).frame(width: 70, height: 70).shadow(radius: 5).cornerRadius(10)
        Text(label)
    }
}

struct emojiDisplay: View {
    //var Index: Int
    var emojis : Emojis
    
    var body: some View {
        VStack{
        Image(emojis.Index)
            .resizable(resizingMode:.stretch)
            .aspectRatio(contentMode:.fit)
            .frame(width:300, height: 300)
        
        Text(emojis.name.uppercased())
            .font(.title)
            .fontWeight(.heavy)
            .frame(maxWidth:.infinity, alignment:.center)
        }
    }
}

//struct imageDisplay: View {
//    //var Index: Int
//    var emojis : Emojis
//
//    var body: some View {
//        Image(emojis.Index)
//            .resizable(resizingMode:.stretch)
//            .aspectRatio(contentMode:.fit)
//    }
//}


struct EmojiDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EmojisDetailView(emojis: emojisList[0])
}
}

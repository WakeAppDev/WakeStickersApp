//  EmojisDetailView.swift
//  Deacon Emojis


import SwiftUI

struct EmojisDetailView: View {
    var emojis : Emojis
    
    var body: some View {
        //NavigationView{
        ScrollView{
            VStack (spacing: 100){
//                渐变背景色
//                LinearGradient(gradient: Gradient(colors: [.white, Color("LightBlue")]),
//                           startPoint: .topLeading,
//                           endPoint:.bottomTrailing).edgesIgnoringSafeArea(.all)
                
                
                Text(emojis.name + " Page")
                    .font(.system(size: 40, weight: .bold, design: .default))
                    .foregroundColor(.black)
                    .padding()
                
                VStack (alignment: .center, spacing: 30){
                    
                    emojiDisplay(emojis: emojis)
                    
                    Spacer()
                    
                    HStack{
                        ScrollView(.horizontal) {
                            HStack (spacing: 15) {
                                SquareView(imageName: "105")
                                SquareView(imageName: "101")
                                SquareView(imageName: "102")
                                SquareView(imageName: "103")
                                SquareView(imageName: "100")
                                SquareView(imageName: "104")
                            }.padding()
                        }.frame(height: 150)
                    }
                    Spacer()
                }
            }} .toolbar {
                    Button(action: {
                        print("Yes, bro!")
                    }, label: {
                        VStack {
                            Image(systemName: "square.and.arrow.up") //使用SF符号的引用方法
                        }
                    })
            }
//            .navigationBarTitle(emojis.name.uppercased(), displayMode: .automatic)
        //}
    }
}
        
        
struct SquareView: View {
    var imageName: String
    
    var body: some View {
        Button(action: {
                
            }, label: {
                Image(imageName)
                    .resizable()
                    .frame(width: 80, height: 80)
        
            })
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
            .frame(width:260, height: 260)
        
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

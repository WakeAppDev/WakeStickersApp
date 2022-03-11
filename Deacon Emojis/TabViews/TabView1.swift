

import SwiftUI

class Theme {
    static func navigationBarColors(background : UIColor?,
       titleColor : UIColor? = nil, tintColor : UIColor? = nil ){
        
        let navigationAppearance = UINavigationBarAppearance()
        navigationAppearance.configureWithOpaqueBackground()
        navigationAppearance.backgroundColor = background ?? .clear
        
        navigationAppearance.titleTextAttributes = [.foregroundColor: titleColor ?? .black]
        navigationAppearance.largeTitleTextAttributes = [.foregroundColor: titleColor ?? .black]
       
        UINavigationBar.appearance().standardAppearance = navigationAppearance
        UINavigationBar.appearance().compactAppearance = navigationAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navigationAppearance

        UINavigationBar.appearance().tintColor = tintColor ?? titleColor ?? .black
    }
}
extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        let newRed = CGFloat(red)/255
        let newGreen = CGFloat(green)/255
        let newBlue = CGFloat(blue)/255
        
        self.init(red: newRed, green: newGreen, blue: newBlue, alpha: 1.0)
    }
}

let newSwiftColor = UIColor(red: 214, green: 177, blue: 96)

struct TabView1: View {
    init(){
        Theme.navigationBarColors(background:newSwiftColor, titleColor: .white)
        }
    
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 5)]

    var body: some View {
    NavigationView {
        ScrollView{
            LazyVGrid(columns: [GridItem(.flexible(),spacing: 15),GridItem(.flexible())],spacing: 15){
                ForEach(emojisList) { Emojis in
                    NavigationLink(destination: EmojisDetailView(DetiailViewEmojis: Emojis)) {
                        VStack {
                            EmojisCard(emojis: Emojis)
                                .aspectRatio(2/3, contentMode: .fit)
                            Text(Emojis.name)
                                .fontWeight(.bold)
                                .foregroundColor(Color("New Gold"))
                        }
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color("New Gold"),lineWidth: 2)
                        )
                       
                    }
                }
            }
            .padding()
        }
        .navigationTitle ("Deacon Emojis")
//        .toolbar {
//                ToolbarItemGroup(placement: .navigationBarTrailing) {
//                    Button("Press") {
//                }
//            }
//        }
        
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


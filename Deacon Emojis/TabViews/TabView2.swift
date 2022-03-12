

import SwiftUI

struct TabView2: View {
    init(){
        Theme.navigationBarColors(background:newSwiftColor, titleColor: .white)
        }
    var body: some View {
        NavigationView{
            VStack{
            List{
                Section{
                    Button {
                            print("button 1 tapped")
                            } label: {
                            Text("Privacy Policy")
                            }
                    Button {
                            print("button 2 tapped")
                            } label: {
                            Text("Contact Us")
                            }
                }
                Section{
                    Button {
                            print("button 3 tapped")
                            } label: {
                            Text("Legal Info")
                            }
                }
            }
            .navigationTitle ("About")
            }
        }
    }
}






struct TabView2_Previews: PreviewProvider {
    static var previews: some View {
        TabView2()
    }
}

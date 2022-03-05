

import SwiftUI

struct TabView2: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.red,.orange,.yellow,.green,.blue,.purple]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
            
        }
    }
}

struct TabView2_Previews: PreviewProvider {
    static var previews: some View {
        TabView2()
    }
}


import SwiftUI

struct TabView2: View {
    
    init() {
        Theme.navigationBarColors(background:newSwiftColor, titleColor: .white)
        }
    
    var body: some View {
        NavigationView{
            VStack{
            List{
                Section{
                    NavigationLink (destination: Privacy()) {
                            Text("Privacy Policy")
                        }
                    NavigationLink (destination: AppDev()) {
                            Text("Contact Us")
                        }
                }
                
                Section{
                    NavigationLink (destination: Legal()) {
                            Text("Lego Info")
                        }
                }
            }
            .navigationTitle ("About")
            }
        }
    }
}


struct Privacy: View {
    
    var body: some View {
        Text("Hello, here is privacy view!")
    }
}

struct AppDev: View {
    
    var body: some View {
        
        Text("Hello, here is our home! The AppDev!")
        Image("AppDev")
            .resizable(resizingMode:.stretch)
            .aspectRatio(contentMode:.fit)
            .frame(width:260, height: 260)
        Text("Richard, Michael, Jiachen, Jessica")
        Text("🎩")


    }
}

struct Legal: View {
    
    var body: some View {
        Text("Hello, here is legal information")
        
    }
}




struct TabView2_Previews: PreviewProvider {
    static var previews: some View {
        TabView2()
    }
}

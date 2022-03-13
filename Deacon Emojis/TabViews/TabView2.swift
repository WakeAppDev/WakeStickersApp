import SwiftUI

struct TabView2: View {
//    let newSwiftColor2 = UIColor(red: 242, green: 242, blue: 247)
    init() {
        Theme.navigationBarColors(background:newSwiftColor, titleColor: .white)
//        UITableView.appearance().backgroundColor = newSwiftColor2
        }
    
    var body: some View {
        VStack{
        NavigationView{
            VStack{
            Form{
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
            .background(Color("New Gold"))
            .padding(.top, 0.5)
            .navigationTitle ("About")
            }
            
        }
        Spacer()
        Text("Built with heart")
        }
    }
}


struct Privacy: View {
    
    var body: some View {
        Link("View Our Privacy Policy Here", destination: URL(string: "https://sites.google.com/wfu.edu/deacon-emojis-privacy-policy/home")!)
            .font(.title)
            .foregroundColor(Color("New Gold"))
    }
}

struct AppDev: View {
    
    var body: some View {
        HStack {
            VStack{
                Text("WFU AppDev")
                    .font(.system(size: 30, weight: .bold, design: .serif))
                    .foregroundColor(.black)
                    .shadow(color: Color.black.opacity(0.2), radius: 0.6, x: 2, y: 2)
                    .frame(alignment: .leading)
                    .padding(.horizontal, 30)
            }
            Spacer()
            Image("AppIcon")
                .resizable()
                .frame(width: 100, height: 100)
                .padding(.horizontal, 10)
            
        }.frame(alignment: .topLeading)
        
        
        VStack {
            
            Image("AppDev")
                .resizable(resizingMode:.stretch)
                .aspectRatio(contentMode:.fit)
                .frame(width:290, height: 290)
            Text("WFUAppDev@outlook.com")
                .font(.system(size: 22, weight: .bold, design: .monospaced))
                .foregroundColor(.blue)
                .padding(.bottom, 2)
            Text("Richard, Michael, Jiachen, Jessica")
                .font(.system(size: 16, weight: .bold, design: .monospaced))
                .foregroundColor(.black)
                .padding(.bottom,2)
            Text("🎩")
                .font(.system(size: 20, weight: .bold, design: .monospaced))
            Spacer()
            
        }
        
        
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

import SwiftUI

struct TabView2: View {
//    let newSwiftColor2 = UIColor(red: 242, green: 242, blue: 247)
    init() {
        Theme.navigationBarColors(background:newSwiftColor, titleColor: .white)
//        UITableView.appearance().backgroundColor = newSwiftColor2
        }
    
    var body: some View {
        ZStack{
            
        NavigationView{
            VStack {
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
                                Text("Legal Info")
                            }
                    }
                }
                .background(Color("New Gold"))
                .padding(.top, 0.5)
                .navigationTitle ("About")
                
                Spacer()
                        
                Text("—— DESIGNED AND DEVELOPED WITH ♥ ——")
                    .font(.system(size: 15, weight: .medium, design: .rounded))
                    .foregroundColor(.gray)
                    .shadow(color: Color.black.opacity(0.2), radius: 0.6, x: 1, y: 1)
                }
                .padding(.bottom, 12)
                .background(Rectangle()
                    .foregroundColor(.gray.opacity(0.1)))
            }
        }
    }
}

struct Privacy: View {
    
    var body: some View {
        VStack (spacing: 30){
        HStack {
            Spacer()
            
            Text("Privacy Information")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .foregroundColor(.black)
                .shadow(color: Color.black.opacity(0.2), radius: 0.6, x: 1, y: 1)
            
            Spacer()
            
        }
        .frame(alignment: .topLeading)
        
            VStack (spacing: 30){
            
            Image("Privacy ")
                .resizable(resizingMode:.stretch)
                .aspectRatio(contentMode:.fit)
                .cornerRadius(10)
                .frame(width:300, height: 300)
                .padding(.bottom,2)
            
            HStack {
            Link("Check Our Privacy Policy Here", destination: URL(string: "https://sites.google.com/wfu.edu/deacon-emojis-privacy-policy/home")!)
                .font(.system(size: 33, weight: .bold, design: .rounded))
                .foregroundColor(Color("New Gold"))
                .multilineTextAlignment(.center)
                .frame(alignment: .center)
                .padding(.bottom,6)
            }
            .padding()
            .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("New Gold"),lineWidth: 2))
           
            Spacer()
        }
        
        }.padding(.top, 30)
    }
}

struct AppDev: View {
    
    var body: some View {
        VStack (spacing: 0){
            HStack {
                Spacer()
                
                Text("WFU AppDev")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .foregroundColor(.black)
                    .shadow(color: Color.black.opacity(0.2), radius: 0.6, x: 1, y: 1)
                
                Spacer()
                
            }
            .frame(alignment: .topLeading)
            //.padding(.bottom, 0)
            
            
            VStack {
                
                Image("AppDev")
                    .resizable(resizingMode:.stretch)
                    .aspectRatio(contentMode:.fit)
                    .frame(width:300, height: 300)
                    .padding(.bottom,2)
                Text("WFUAppDev@outlook.com")
                    .font(.system(size: 25, weight: .bold, design: .rounded))
                    .foregroundColor(.blue)
                    .padding(.bottom, 2)
                Text("If you have any questions, please contact us through the email above")
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 30)
//                Text("Richard, Michael, Jiachen, Jessica")
//                    .font(.system(size: 16, weight: .bold, design: .monospaced))
//                    .foregroundColor(.black)
//                    .padding(.bottom,2)
//                Text("🎩")
//                    .font(.system(size: 20, weight: .bold, design: .monospaced))
                Spacer()
            }
        }.padding(.top, 30)
        
    }
}

struct Legal: View {
    
    var body: some View {
        
        VStack{
            
            HStack {
                Spacer()
                
                Text("Deacon Emojis Legal Info")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .foregroundColor(.black)
                    .shadow(color: Color.black.opacity(0.2), radius: 0.6, x: 1, y: 1)
                Spacer()
            }
            .frame(alignment: .topLeading)
            .padding(.bottom, 30)
            

            VStack {
                Text("1. We don't have an account system in this mobile application. \n2. When you want to save any sticker to your photos, you need to agree the access to your photo album.\n3. This mobile application and all the stickers it includes are designed and created by the WFU AppDev.\n4. Except for the access to photos, we won't request any other permission or collect any information regarding your privacy.")
                        .font(.system(size: 16, weight: .bold, design: .rounded))
                        .foregroundColor(.black)
                        .lineSpacing(15)
                        .padding(.bottom, 25)
                        
                
                Image("200").resizable()
                    .cornerRadius(10)
                    .frame(width: 80, height: 80)
                
                Text("Version: 1.0").foregroundColor(.gray)
                
                Spacer()
            }.padding(.horizontal, 30)
        }.padding(.top, 30)
        
    }
}




struct TabView2_Previews: PreviewProvider {
    static var previews: some View {
        TabView2()
    }
}


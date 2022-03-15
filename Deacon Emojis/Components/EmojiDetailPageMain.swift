//
//  EmojiDetailPageMain.swift
//  Deacon Emojis
//
//  Created by 习宇坤 on 2022/3/10.
//

import SwiftUI
import UIKit
import MobileCoreServices
import CoreAudio


struct EmojiDetailPageMain: View {
    var thisEmojis : Emojis

    
    var body: some View {
        
        //生成相应页面的UIImage，注意UIImage是一种格式，savePhoto必须要求这种格式
        let thisPageEmojiUIimage: UIImage = UIImage(named: thisEmojis.Index)!

        ScrollView{
            VStack (spacing: 40){
                
                topBarView(emojis: thisEmojis)
                    .padding(.bottom, 30)
                
                
                VStack (alignment: .center, spacing: 30){
                    
                    emojiDisplay(emojis: thisEmojis)
                
                    HStack{
                        ScrollView(.horizontal) {
                            HStack (spacing: 15) {
                                //存图按键
                                SaveImageButton(uiImage: thisPageEmojiUIimage, imageName: "106")
                                //跳转iMessage分享图片
                                iMessageView(imageName: "105", emojis: thisEmojis)
            
                                //instagram分享到快拍
                                if InstagramSharingUtils.canOpenInstagramStories {
                                        Button(action: {
                                          InstagramSharingUtils.shareToInstagramStories(thisPageEmojiUIimage)
                                        }) {
                                            Image("102").resizable()
                                                .frame(width: 80, height: 80)
                                        }
                                      } else {
                                          Image("102").resizable()
                                              .frame(width: 80, height: 80)
                                      }
                                
                                SquareView(imageName: "103", emojis: thisEmojis)
                                SquareView(imageName: "100", emojis: thisEmojis)
                                SquareView(imageName: "104", emojis: thisEmojis)
                            }.padding()
                        }.frame(height: 150)
                    }
                    Spacer()
            }
        }}.toolbar {
            ToolbarItemGroup(placement: .navigationBarTrailing) {
                Button(action: {
                    guard let image1 = UIImage(named: thisEmojis.Index) else { return }
                    let activityVC = UIActivityViewController(activityItems: [image1], applicationActivities: nil)
                    UIApplication.shared.windows.first?.rootViewController?.present(activityVC, animated: true, completion: nil)

                }, label:{
                    Image(systemName: "square.and.arrow.up")
                }
        )}
      }
    }
}


struct topBarView: View {
    var emojis : Emojis
    
    var body: some View {
        HStack {
            //VStack{
                Text(emojis.name + " Deacon")
                .font(.system(size: 37, weight: .bold, design: .rounded))
                    .foregroundColor(.black)
                    .shadow(color: Color.black.opacity(0.2), radius: 2, x: 4, y: 4)
                    .frame(alignment: .leading)
                    .padding(.horizontal, 30)
            //}
//            Spacer()
//            Image("AppDev")
//                .resizable()
//                .frame(width: 100, height: 100)
//                .padding(.horizontal, 10)
                
        }.padding(.top, 25)
        
    }
}


struct SquareView: View {
    var imageName: String
    var emojis: Emojis

    var body: some View {
        Button(action: {
            guard let image2 = UIImage(named: emojis.Index) else { return }
            
            let activityVC = UIActivityViewController(activityItems: [image2], applicationActivities: nil)
                    UIApplication.shared.windows.first?.rootViewController?.present(activityVC, animated: true, completion: nil)
            }, label: {
                Image(imageName)
                    .resizable()
                    .frame(width: 80, height: 80)

            })
    }
}

//Emoji图片展示➕Emoji名称展示
struct emojiDisplay: View {
    var emojis : Emojis

    var body: some View {
        VStack (spacing: 27){
        Image(emojis.Index)
            .resizable()
            .aspectRatio(contentMode:.fit)
            .frame(width:240, height: 240)
            .shadow(color: Color(UIColor(named: "New Gold")!), radius: 60)

        Text(emojis.name)
                .font(.system(size: 28, weight: .bold, design: .rounded))
            .foregroundColor(Color.black.opacity(0.8))
            .padding(.top, 3)
            .frame(maxWidth:.infinity, alignment:.center)
        }
        //.frame(width: 330, height: 330, alignment: .center)
        //.cornerRadius(30)
    }
}

//存图按钮
struct SaveImageButton: View {
    var uiImage: UIImage
    var imageName: String

    var body: some View {
    Button(action: {
            //存图function call，图片会存入叫“Deac Emoji App”的文件夹，存的图片为uiImage
            saveToAlbum(named: "Deac Emoji App", image: uiImage)
        }, label: {
            Image(imageName)
                .resizable()
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 5, y: 5)
                .frame(width: 80, height: 80)
        })
    }
}

//存图Function：创建新的album，执行album.save image，基于CustomAlbum Class的function call
func saveToAlbum(named: String, image: UIImage) {
    let album = CustomAlbumSaveClass(name: named)
    album.save(image: image) { (result) in
        //用switch展示result：成功或失败
        DispatchQueue.main.sync {
            switch result {
            case .success(_):
                //TODO：成功提示alert还没有完成
                print("success")
            case .failure(_):
                print("failure")
            }
        }
    }
}


//struct message @unchecked Sendable {
//
//}

struct iMessageView: View {
    var imageName: String
    var emojis: Emojis

    var body: some View {
    Button(action: {
        guard let image2 = UIImage(named: emojis.Index) else { return }
        
        let activityVC = UIActivityViewController(activityItems: [image2], applicationActivities: nil)
                UIApplication.shared.windows.first?.rootViewController?.present(activityVC, animated: true, completion: nil)
        }, label: {
            Image(imageName)
                .resizable()
                .frame(width: 80, height: 80)

        })
    }
}


























struct EmojiDetailPageMain_Previews: PreviewProvider {
    static var previews: some View {
        EmojiDetailPageMain(thisEmojis: emojisList[0])
    }
}

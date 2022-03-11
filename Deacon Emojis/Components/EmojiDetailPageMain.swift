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
            VStack (spacing: 100){
                
                            Text(thisEmojis.name + " Page")
                                .font(.system(size: 40, weight: .bold, design: .default))
                                .foregroundColor(.black)
                                .padding()
                            
                            VStack (alignment: .center, spacing: 30){
                                
                                emojiDisplay(emojis: thisEmojis)
                                
                    Spacer()
                    
                    HStack{
                        ScrollView(.horizontal) {
                            HStack (spacing: 15) {
                                //存图按键
                                SaveImageButton(uiImage: thisPageEmojiUIimage, imageName: "106")
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
        
//        func loadImage() {
//            guard let inputImage = SaveUIImage else {
//                image = Image(uiImage: inputImage)
//            }
//        }

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

//Emoji图片展示➕Emoji名称展示
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


















struct EmojiDetailPageMain_Previews: PreviewProvider {
    static var previews: some View {
        EmojiDetailPageMain(thisEmojis: emojisList[0])
    }
}

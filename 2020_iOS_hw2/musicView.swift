//
//  musicView.swift
//  2020_iOS_hw2
//
//  Created by Hannn on 2020/4/13.
//  Copyright © 2020 Hannn. All rights reserved.
//

import SwiftUI
import AVFoundation
import MediaPlayer

struct Music: View {
    @State var play = true
    
    let player = AVPlayer()
    let commandCenter = MPRemoteCommandCenter.shared()
    var body: some View {
        HStack{
            Image("img_music")
                .resizable()
                .frame(width:40,height:40)
                .scaledToFill()
                .padding(.trailing,40)
            Text("If I Had A Chicken")
                .font(.system(size:22))
                .bold()
            
            Spacer()
            Button(action: {
                let fileUrl=Bundle.main.url(forResource:"If_I_Had_a_Chicken",withExtension: "mp3")
                let playerItem = AVPlayerItem(url: fileUrl!)
                self.player.replaceCurrentItem(with: playerItem)
                self.play.toggle()
                if self.play{
                    self.player.pause()
                }
                else{
                    self.player.play()
                }
                self.commandCenter.playCommand.addTarget {  event in
                    if self.player.rate == 0.0 {
                        self.player.play()
                        return .success
                    }
                    return .commandFailed
                }
                
                self.commandCenter.pauseCommand.addTarget {  event in
                    if self.player.rate == 1.0 {
                        self.player.pause()
                        return .success
                    }
                    return .commandFailed
                }
                
            }){
                Image(systemName: play ? "play.circle" : "pause.circle")
                    .resizable()
                    .frame(width:30,height:30)
                    .foregroundColor(Color.orange)
            }
        }
        .padding(10)
        .background(LinearGradient(gradient: Gradient(colors: [Color(red: 251/255, green: 238/255, blue: 152/255), Color(red: 172/255, green: 236/255, blue: 215/255)]), startPoint: UnitPoint(x: 0.4, y: 0.4), endPoint: UnitPoint(x: 0.4, y: 1)))
        .border(Color.white, width: 2)
    
    }
}

struct Music_Previews: PreviewProvider {
    static var previews: some View {
        Music()
    }
}

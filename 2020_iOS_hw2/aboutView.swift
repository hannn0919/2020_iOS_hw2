//
//  aboutView.swift
//  2020_iOS_hw2
//
//  Created by Hannn on 2020/3/30.
//  Copyright © 2020 Hannn. All rights reserved.
//

import SwiftUI
import UIKit
import SafariServices



struct aboutView: View {
    
    @State var show = false
    @State var urlString = ""
    @State var imgshow = false
    var body: some View {
        
        VStack{
            
            VStack{
                if imgshow{
                    imgView()
                        .transition(.scale)
                }
            }.animation(.easeInOut(duration:0.5))
                .onAppear {
                    self.imgshow = true
                    
            }
            .onDisappear {
                self.imgshow = false
                
            }
            
            
            
            Text("相關連結")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .padding()
                .foregroundColor(.black)
                .background(Color.yellow)
                .cornerRadius(30)
                .offset(x: 0, y: 20)
            
            HStack{
                
                Button(action: {
                    self.urlString = "https://www.facebook.com/Ologychicken/"
                    self.show.toggle()
                }) {
                    Image("facebook")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .offset(x: 0, y: 20)
                        .padding()
                    
                    
                }.sheet(isPresented: $show) {
                    SafariView(url:URL(string: self.urlString)!)
                }.buttonStyle(PlainButtonStyle())
                
                
                Button(action: {
                    self.urlString = "https://www.instagram.com/byebyechuchu/?hl=zh-tw"
                    self.show.toggle()
                }) {
                    Image("instagram")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .offset(x: 0, y: 20)
                        .padding()
                    
                    
                }.sheet(isPresented: $show) {
                    SafariView(url:URL(string: self.urlString)!)
                }.buttonStyle(PlainButtonStyle())
                
                Button(action: {
                    self.urlString = "https://store.line.me/search/zh-Hant?q=%E5%A5%A7%E6%A8%82%E9%9B%9E"
                    self.show.toggle()
                }) {
                    Image("line")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .offset(x: 0, y: 20)
                        .padding()
                    
                    
                }.sheet(isPresented: $show) {
                    SafariView(url:URL(string: self.urlString)!)
                }.buttonStyle(PlainButtonStyle())
                
            }
        }
        
    }
}

struct aboutView_Previews: PreviewProvider {
    static var previews: some View {
        aboutView()
    }
}

struct SafariView: UIViewControllerRepresentable {
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController,
                                context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
    
}

struct imgView: View {
    var body: some View {
        Image("alert")
    }
}

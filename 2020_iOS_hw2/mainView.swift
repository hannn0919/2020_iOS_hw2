//
//  mainView.swift
//  2020_iOS_hw2
//
//  Created by Hannn on 2020/3/30.
//  Copyright © 2020 Hannn. All rights reserved.
//

import SwiftUI

struct mainView: View {
    
    var body: some View {
        NavigationView{
            List {
                Section(header: Text("登場角色")){
                    ScrollView(.horizontal) {
                        HStack(spacing: 10.0) {
                            ForEach(0 ..< characters.count) { (item) in
                                NavigationLink(destination: introductionView(icon: characters[item].icon, name_CH: characters[item].name_CH, description: characters[item].description)) {charactersPicture(name: characters[item].icon)}
                            }
                        }
                        .frame(height: 200)
                    }
                }
                
                Section(header: Text("短篇漫畫")){
                    ForEach(0 ..< comics.count) { (item) in
                        NavigationLink(destination: cominView(picNo: comics[item].picture, count: comics[item].count)) {comicList(picName: comics[item].picture + "1", description: comics[item].title)}
                    }
                    
                }
            }
            .navigationBarTitle("奧樂雞是一隻雞")
            .buttonStyle(PlainButtonStyle())
        }
    }
}

struct charactersPicture: View {
    var name: String
    
    var body: some View {
        
        Image(name)
            .resizable()
            .scaledToFill()
            .frame(width: 120, height: 120)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
        
    }
}

struct comicList: View {
    var picName: String
    var description: String
    
    var body: some View {
        
        VStack {
            Image(picName)
                .resizable()
                .scaledToFill()
                .frame(height: 200)
                .clipped()
            
            Text(description)
                .font(.system(size: 30))
                .fontWeight(.bold)
        }
        .frame(height: 300)
        .background(LinearGradient(gradient: Gradient(colors: [Color.white, Color.gray]), startPoint: UnitPoint(x: 0, y: 0), endPoint: UnitPoint(x: 1, y: 1)))
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 3))
        
    }
}

struct cominView: View {
    var picNo: String
    var count: Int
    
    var body: some View {
        
        List(1 ..< count + 1) { (index) in
            Image(self.picNo + "\(index)")
                .resizable()
                .scaledToFill()
                .clipped()
        }
        .onAppear {
            UITableView.appearance().separatorColor = .clear
        }
        
    }
}

struct mainView_Previews: PreviewProvider {
    static var previews: some View {
        mainView()
    }
}

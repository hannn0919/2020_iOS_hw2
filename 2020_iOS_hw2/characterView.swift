//
//  characterView.swift
//  2020_iOS_hw2
//
//  Created by Hannn on 2020/3/30.
//  Copyright © 2020 Hannn. All rights reserved.
//

import SwiftUI

struct characterView: View {
    
    var body: some View {
        
        NavigationView{
            List{
                ForEach(0 ..< characters.count) { (item) in
                    NavigationLink(destination: introductionView(icon: characters[item].icon, name_CH: characters[item].name_CH, description: characters[item].description)) {
                        characterList(icon: characters[item].icon, name_CH: characters[item].name_CH)
                    }
                }.frame(height: 200)
            }
            .navigationBarTitle("角色介紹")
        }
    }
}

struct characterList: View {
    var icon: String
    var name_CH: String
    
    var body: some View {
        
        HStack (spacing: 30){
            Image(icon)
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
            
            Text(name_CH)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.black)
                .multilineTextAlignment(.center)
        }
        .frame(width: 400, height: 180)
        .background(LinearGradient(gradient: Gradient(colors: [Color(red: 172/255, green: 236/255, blue: 215/255), Color(red: 251/255, green: 238/255, blue: 152/255)]), startPoint: UnitPoint(x: 0, y: 0), endPoint: UnitPoint(x: 1, y: 1)))
        .cornerRadius(10)
        .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 3))
        
    }
}

struct introductionView: View {
    var icon: String
    var name_CH: String
    var description: String
    
    @State var picshow = false
    var body: some View {
        
        VStack{
            if picshow{
                introView(icon: icon, name_CH: name_CH, description: description)
                    .transition(.slide)
            }
        }.animation(.easeInOut(duration:1.3))
            .onAppear {
                self.picshow = true
                
        }
        .onDisappear {
            self.picshow = false
            
        }
        
        
        
    }
    
}

struct characterView_Previews: PreviewProvider {
    static var previews: some View {
        characterView()
    }
}

struct introView: View {
    
    var icon: String
    var name_CH: String
    var description: String
    
    var body: some View {
        VStack (spacing: 30){
            Image("\(icon)1")
                .resizable()
                .scaledToFill()
                .frame(width: 400, height: 400)
                .shadow(radius: 10)
            
            HStack{
                Text(name_CH)
                    .font(.custom("jf-openhuninn-1.0",size:22))
                    .fontWeight(.heavy)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                
                Text("  ( \(icon) )")
                    .font(.custom("jf-openhuninn-1.0",size:22))
                    .fontWeight(.heavy)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
            }
            
            Text(description)
                .fontWeight(.heavy)
                .frame(width: 300)
                .fixedSize(horizontal: false, vertical: true)
        }
    }
}


//
//  ContentView.swift
//  2020_iOS_hw2
//
//  Created by Hannn on 2020/3/30.
//  Copyright © 2020 Hannn. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack{
            TabView {
                mainView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("主頁")
                }
                characterView()
                    .tabItem {
                        Image(systemName: "person.3.fill")
                        Text("角色介紹")
                }
                productView()
                    .tabItem {
                        Image(systemName: "cart.fill")
                        Text("周邊商品")
                }
                aboutView()
                    .tabItem {
                        Image(systemName: "info.circle.fill")
                        Text("關於")
                }
            }
            .accentColor(.orange)
            
            Music()
                .offset(y:335)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

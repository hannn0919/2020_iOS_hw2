//
//  productView.swift
//  2020_iOS_hw2
//
//  Created by Hannn on 2020/3/30.
//  Copyright © 2020 Hannn. All rights reserved.
//

import SwiftUI
import UIKit
import SafariServices

struct productView: View {
    @State var show = false
    @State var urlString = ""
    
    var body: some View {
        List{
            ScrollView(.horizontal) {
                HStack(spacing: 10.0) {
                    ForEach(0 ..< products.count) { (item) in
                        Image(products[item].pic)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 250)
                            .clipped()
                    }
                }
                .frame(height: 350)
                .listRowInsets(EdgeInsets(top: 0, leading: 5, bottom: 5, trailing: 5))
            }
            
            Section(header: Text("周邊商品")){
                ForEach(0..<4) { (index) in
                    HStack(spacing:5) {
                        ForEach(1..<3) { (item) in
                            
                            Button(action: {
                                self.urlString = products[self.num(i: index, j: item)].url
                                self.show.toggle()
                            }) {
                                VStack{
                                    Image(products[self.num(i: index, j: item)].pic)
                                        .resizable()
                                        .scaledToFill()
                                        .clipped()
                                    
                                    Text(products[self.num(i: index, j: item)].name)
                                        .clipped()
                                }
                                
                            }.sheet(isPresented: self.$show) {
                                SafariView(url:URL(string: self.urlString)!)
                            }.buttonStyle(PlainButtonStyle())
                            
                        }
                    }
                }
                .listRowInsets(EdgeInsets(top: 0, leading: 5, bottom: 5, trailing: 5))
            }
        }
    }
    
    func num(i:Int,j:Int)->Int{
        i * 2 + j - 1
    }
}

struct productView_Previews: PreviewProvider {
    static var previews: some View {
        productView()
    }
}

struct gridProductView: View {
    var body: some View {
        Image("alert")
    }
}

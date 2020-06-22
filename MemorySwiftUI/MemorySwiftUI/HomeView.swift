//
//  HomeView.swift
//  MemorySwiftUI
//
//  Created by liuchunhua on 2020/6/14.
//  Copyright © 2020 liuchunhua. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    let datas = [
        CellModel(type: "1000", desc: "理财", image: "licai"),
        CellModel(type: "1001", desc: "邮箱", image: "youxiang"),
        CellModel(type: "1002", desc: "社交", image: "shejiao"),
        CellModel(type: "1003", desc: "购物", image: "gouwu"),
        CellModel(type: "1004", desc: "支付", image: "zhifu"),
        CellModel(type: "1005", desc: "游戏", image: "youxi"),
        CellModel(type: "1006", desc: "工作", image: "work"),
        CellModel(type: "2000", desc: "其他", image: "qita")
    ]
    var body: some View {
        NavigationView{
            ZStack{
                Image("Home").resizable().aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(.all)
                ScrollView(.horizontal,showsIndicators: false){
                    HStack(alignment: .center, spacing: 35.0){
                        ForEach(0..<self.datas.count/2,id: \.self){index in
                            VStack(alignment: .center, spacing: 30.0){
                                NavigationLink(destination: ListView(data: self.datas[index*2])) {
                                    ImageCell(data: self.datas[index*2])
                                }.buttonStyle(PlainButtonStyle())
                                NavigationLink(destination: ListView(data: self.datas[index*2+1])) {
                                    ImageCell(data: self.datas[index*2+1])
                                }.buttonStyle(PlainButtonStyle())
                            }
                        }
                    }
                }.padding(.horizontal, 20.0)
            }//.navigationBarHidden(true)
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

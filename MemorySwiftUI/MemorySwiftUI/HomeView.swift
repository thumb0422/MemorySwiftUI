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
        VStack{
            Spacer()
            ScrollView(.horizontal,showsIndicators: false){
                HStack{
                    /**
                    //todo 无法获取index
                    ForEach(datas,id: \.self){data in
                        ImageCell(data: data)
                    }
                    */
                    ForEach(0..<self.datas.count/2,id: \.self){index in
                        VStack{
                            Spacer()
                            ImageCell(data: self.datas[index*2])
                            Spacer()
                            ImageCell(data: self.datas[index*2+1])
                            Spacer()
                        }
                    }
                }
            }
                .padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15))
                .frame(height: 160.0,alignment: .bottom)
            Spacer()
        }
        .background(Image("Home")
            .resizable()
            .scaledToFill()
            .edgesIgnoringSafeArea(.all))
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

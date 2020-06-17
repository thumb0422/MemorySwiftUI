//
//  ListCell.swift
//  MemorySwiftUI
//
//  Created by liuchunhua on 2020/6/17.
//  Copyright © 2020 liuchunhua. All rights reserved.
//

import SwiftUI

struct ListCell:View {
    @State var wangzhi:String
    @State var desc:String
    var body: some View{
        HStack{
            VStack{
                Text("网址")
                TextField("Nick Name", text: $wangzhi).textFieldStyle(RoundedBorderTextFieldStyle())
            }
            VStack{
                Text("说明")
                TextField("Nick Name", text: $desc).textFieldStyle(RoundedBorderTextFieldStyle())
            }
        }
    }
}

struct ListCell_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

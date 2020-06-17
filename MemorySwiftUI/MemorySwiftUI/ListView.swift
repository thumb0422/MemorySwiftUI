//
//  ListView.swift
//  MemorySwiftUI
//
//  Created by liuchunhua on 2020/6/17.
//  Copyright © 2020 liuchunhua. All rights reserved.
//

import SwiftUI

struct ListView:View {
    let listDatas:[String] = ["A","B","C"]
    var body: some View{
        return List{
            ForEach(listDatas,id: \.self){data in
                Text("\(data)")
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

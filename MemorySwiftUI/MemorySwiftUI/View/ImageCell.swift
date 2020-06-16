//
//  ImageCell.swift
//  MemorySwiftUI
//
//  Created by liuchunhua on 2020/6/14.
//  Copyright © 2020 liuchunhua. All rights reserved.
//

import SwiftUI

struct ImageCell:View {
    let data:CellModel
    var body: some View{
        Image(self.data.image)
            .scaledToFit()
            .frame(width: 75, height: 48, alignment: .trailing)
            .cornerRadius(16.0)
            .onTapGesture {
                print("\(self.data.image),\(self.data.desc),pressed")
        }
    }
}

struct ImageCell_Previews: PreviewProvider {
    static var previews: some View {
        ImageCell(data: CellModel(type: "1000", desc: "测试", image: "gouwu"))
    }
}

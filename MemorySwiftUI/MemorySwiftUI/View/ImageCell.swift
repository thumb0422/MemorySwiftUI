//
//  ImageCell.swift
//  MemorySwiftUI
//
//  Created by liuchunhua on 2020/6/14.
//  Copyright © 2020 liuchunhua. All rights reserved.
//

import SwiftUI

struct ImageCell:View {
    var imageName:String?
    var body: some View{
        Image("gouwu")
            .scaledToFit()
            .frame(width: 75, height: 50, alignment: .trailing)
            .cornerRadius(/*@START_MENU_TOKEN@*/14.0/*@END_MENU_TOKEN@*/)
            .onTapGesture {
                print("=----")
        }
    }
}

struct ImageCell_Previews: PreviewProvider {
    static var previews: some View {
        ImageCell()
    }
}

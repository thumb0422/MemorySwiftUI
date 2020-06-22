//
//  ListCell.swift
//  MemorySwiftUI
//
//  Created by liuchunhua on 2020/6/17.
//  Copyright © 2020 liuchunhua. All rights reserved.
//

import SwiftUI

struct ListCell:View {
    @State var data:db005
    var body: some View{
        VStack{
            HStack{
                Text("网址")
                TextField("A", text: $data.accountUrl)
                    .disabled(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
            }
            HStack{
                Text("说明")
                TextField("B", text: $data.accountDesc)
                    .disabled(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
            }
            
        }
    }
}

struct ListCell_Previews: PreviewProvider {
    static var previews: some View {
        ListCell(data: db005(accountKey: "", accountUrl: "", account: "", accountPWD: "", accountDesc: "", dataType: ""))
    }
}

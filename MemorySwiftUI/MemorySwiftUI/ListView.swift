//
//  ListView.swift
//  MemorySwiftUI
//
//  Created by liuchunhua on 2020/6/17.
//  Copyright © 2020 liuchunhua. All rights reserved.
//

import SwiftUI

struct ListView:View {
    var data:CellModel
    let lists = [1,2,3,4,5,6]
    init(data:CellModel) {
        self.data = data
        UITableView.appearance().tableFooterView = UIView()
        UITableView.appearance().separatorStyle = .none
    }
    var body: some View{
        List{
            ForEach(lists,id: \.self){list in
                ListCell(data: db005(accountKey: "\(list)", accountUrl: "www.baidu.com", account: "", accountPWD: "", accountDesc: "\(list)", dataType: ""))
            }
        }
        .navigationBarTitle(self.data.desc)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(data: CellModel(type: "1000", desc: "理财", image: "licai"))
    }
}

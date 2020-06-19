//
//  ListView.swift
//  MemorySwiftUI
//
//  Created by liuchunhua on 2020/6/17.
//  Copyright © 2020 liuchunhua. All rights reserved.
//

import SwiftUI

struct ListView:View {
    var data:CellModel?
    var body: some View{
        Text(self.data?.image ?? "asd" ).foregroundColor(.red).font(.largeTitle)
            .navigationBarTitle(self.data?.desc ?? "")
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(data: CellModel(type: "1000", desc: "Test", image: ""))
    }
}

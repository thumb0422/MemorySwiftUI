//
//  HomeView.swift
//  MemorySwiftUI
//
//  Created by liuchunhua on 2020/6/14.
//  Copyright © 2020 liuchunhua. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            Spacer()
            HStack{
                VStack{
                    ImageCell()
                    ImageCell()
                }
                VStack{
                    ImageCell()
                    ImageCell()
                }
                VStack{
                    ImageCell()
                    ImageCell()
                }
            }
        }
        .background(Image("Home").resizable().scaledToFill().edgesIgnoringSafeArea(.all))
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

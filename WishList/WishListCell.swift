//
//  WishListCell.swift
//  WishList
//
//  Created by kotaro on 2020/06/14.
//  Copyright © 2020 Satou Koutarou. All rights reserved.
//

import SwiftUI

struct WishListCell: View {
    var body: some View {
        HStack {
            Image(systemName: "safari")
                .frame(width: 50,
                       height: 50)
            VStack {
                Text("Item name")
                Text("¥ 1,000")
            }
            
        }
    }
}

struct WishListCell_Previews: PreviewProvider {
    static var previews: some View {
        WishListCell()
    }
}

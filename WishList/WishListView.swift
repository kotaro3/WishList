//
//  WishListView.swift
//  WishList
//
//  Created by Satou Koutarou on 2020/06/02.
//  Copyright © 2020 Satou Koutarou. All rights reserved.
//

import SwiftUI

struct WishListView: View {
    var body: some View {
        List {
			WishListCell()
				.frame(height: 60)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WishListView()
    }
}

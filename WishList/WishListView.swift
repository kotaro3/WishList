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
        NavigationView(content: {
            List {
//                NavigationLink(
//                    destination: ## DescriptionView() ##)
//                {
                    WishListCell()
                        .frame(height: 60)
//                }
            }
            .navigationBarTitle("WishList")
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WishListView()
    }
}

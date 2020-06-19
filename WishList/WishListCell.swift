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
			Image("priority_high")
			.resizable()
				.aspectRatio(contentMode: .fit)
                .frame(width: 25,
					   height: 25)
				.padding(.trailing, 10)
			VStack(alignment: .leading) {
				Text("Item name")
					.padding(.bottom, 5)
					.multilineTextAlignment(.leading)
					.lineLimit(1)
                Text("¥ 1,000")
					.multilineTextAlignment(.leading)
            }
			Spacer()
			Image("no_image")
				.resizable()
				.aspectRatio(contentMode: .fit)
				.frame(width: 80, height: 60)
        }
    }
}

struct WishListCell_Previews: PreviewProvider {
    static var previews: some View {
        WishListCell()
    }
}

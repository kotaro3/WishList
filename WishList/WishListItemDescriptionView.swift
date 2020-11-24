//
//  WishListDescriptionView.swift
//  WishList
//
//  Created by kotaro on 2020/11/05.
//  Copyright © 2020 Satou Koutarou. All rights reserved.
//

import SwiftUI

struct WishListItemDescriptionView: View {

	@State private var isPresentedEdit: Bool = false

    var name: String
    var price: Int
    var priority: String
    
    var body: some View {
		ScrollView(content: {
			VStack(alignment: .center) {
				Spacer()
					.frame(height: 40)
				HStack {
					Image("no_image")
						.resizable()
						.padding(.horizontal, 10.0)
						.scaledToFit()
						.frame(height: 200)
				}
				Spacer()
					.frame(height: 30)
				Rectangle()
					.frame(height: 1)
					.foregroundColor(.gray)
					.padding(
						EdgeInsets(
							top: 0,
							leading: 20,
							bottom: 0,
							trailing: 20
						)
					)
				Spacer()
					.frame(height: 10)
				HStack(alignment: .top) {
					Text("Name:")
						.multilineTextAlignment(.leading)
						.padding(
							EdgeInsets(
								top: 0,
								leading: 10,
								bottom: 0,
								trailing: 0
							)
						)
					Text(name)
						.multilineTextAlignment(.leading)
					Spacer()
				}
				.padding(.vertical, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
				HStack(alignment: .top) {
					Text("Price:")
						.multilineTextAlignment(.leading)
						.padding(
							EdgeInsets(
								top: 0,
								leading: 10,
								bottom: 0,
								trailing: 0
							)
						)
					Text("\(price)")
						.multilineTextAlignment(.leading)
					Spacer()
				}
				.padding(.vertical, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
				HStack(alignment: .top) {
					Text("Priority:")
						.multilineTextAlignment(.leading)
						.padding(
							EdgeInsets(
								top: 0,
								leading: 10,
								bottom: 0,
								trailing: 0
							)
						)
					Image("priority_high")
						.resizable()
						.frame(width: 20, height: 20)
						.aspectRatio(contentMode: .fit)
					Spacer()
				}
				.padding(.vertical, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
				Spacer()
			}
			.navigationBarItems(
				trailing: Button("編集", action: {
					self.isPresentedEdit = true
				})
				.sheet(
					isPresented: $isPresentedEdit,
					content: {
						NavigationView {
							WishListItemEditView(isPresentedEdit: $isPresentedEdit,
												 name: name,
												 price: price,
												 priority: priority)
								.navigationBarTitle(Text("編集"), displayMode: .inline)
								.navigationBarItems(
									trailing: Button("キャンセル", action: {
										self.isPresentedEdit.toggle()

									})
								)
						}
					}
				)
			)
		})
	}
}

struct WishListDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        WishListItemDescriptionView(name: "", price: 0, priority: "")
    }
}

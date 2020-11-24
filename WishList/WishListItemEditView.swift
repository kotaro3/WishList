//
//  WishListItemEditView.swift
//  WishList
//
//  Created by Satou Koutarou on 2020/11/24.
//  Copyright © 2020 Satou Koutarou. All rights reserved.
//

import SwiftUI

struct WishListItemEditView: View {

	@Binding var isPresentedEdit: Bool

	@State var name: String
	@State var price: Int
	@State var priority: String

	var body: some View {
		VStack {
			ScrollView(content: {
				VStack(alignment: .center) {
					Image("no_image")
						.resizable()
						.padding(.bottom, 10.0)
						.padding(.horizontal, 10.0)
						.scaledToFit()
						.frame(height: 200)
					Rectangle()
						.frame(height: 1)
						.foregroundColor(.gray)
						.padding(.horizontal, 10)
					HStack {
						Text("Name: ")
						TextField("", text: $name)
					}
					.padding(.horizontal, 20)
					Rectangle()
						.frame(height: 1)
						.foregroundColor(.gray)
						.padding(.horizontal, 10)
					HStack {
						Text("Price: ")
						TextField("", value: $price, formatter: NumberFormatter())
					}
					.padding(.horizontal, 20)
					Rectangle()
						.frame(height: 1)
						.foregroundColor(.gray)
						.padding(.horizontal, 10)
					HStack {
						Text("Priority: ")
						TextField("", text: $priority)
					}
					.padding(.horizontal, 20)
					Rectangle()
						.frame(height: 1)
						.foregroundColor(.gray)
						.padding(.horizontal, 10)
				}
				Spacer()
			})
			.padding(.top, 80)
			Button("保存", action: {
				self.isPresentedEdit.toggle()
			})
			.frame(width: UIScreen.main.bounds.width, height: 60)
			.accentColor(.white)
			.background(Color.blue)
		}
		.edgesIgnoringSafeArea(.all)
    }
}

struct WishListItemEditView_Previews: PreviewProvider {
    static var previews: some View {
		WishListItemEditView(isPresentedEdit: .constant(false),
							 name: "",
							 price: 0,
							 priority: "")
    }
}

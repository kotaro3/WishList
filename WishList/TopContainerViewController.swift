//
//  TopContainerViewController.swift
//  WishList
//
//  Created by Satou Koutarou on 2020/06/11.
//  Copyright © 2020 Satou Koutarou. All rights reserved.
//

import UIKit
import SwiftUI

class TopContainerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
		setupNavigationBar()
		let content = UIHostingController(rootView: WishListView())
		self.addChild(content)
		self.view.addSubview(content.view)
		self.didMove(toParent: self)

		content.view.translatesAutoresizingMaskIntoConstraints = false
		content.view.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
		content.view.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
		content.view.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: 16).isActive = true
		content.view.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
		content.view.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    }

	func setupNavigationBar() {
		let logoImage = UIImageView(image: UIImage(named: "logo"))
		logoImage.contentMode = .scaleAspectFit
		navigationItem.titleView = logoImage
		navigationController?.navigationBar.barTintColor = UIColor(displayP3Red: 33/255,
																   green: 206/255,
																   blue: 100/255,
																   alpha: 1)
		navigationController?.navigationBar.tintColor = .white
	}
}

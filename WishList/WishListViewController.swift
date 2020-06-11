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
		title = "aaaa"
		let vc = UIHostingController(rootView: WishListView())
		self.addChild(vc)
		self.view.addSubview(vc.view)
		self.didMove(toParent: self)

		vc.view.translatesAutoresizingMaskIntoConstraints = false
		vc.view.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
		vc.view.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
		vc.view.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
		vc.view.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
		vc.view.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    }

}

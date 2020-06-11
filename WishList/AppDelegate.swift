//
//  AppDelegate.swift
//  WishList
//
//  Created by Satou Koutarou on 2020/06/02.
//  Copyright © 2020 Satou Koutarou. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
	var window: UIWindow?

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
		self.window = UIWindow(frame: UIScreen.main.bounds)
		let storyboard = UIStoryboard(name: "TopContainerViewController", bundle: nil)
		let wishListViewController = storyboard.instantiateViewController(withIdentifier: "TopContainerViewController") as! TopContainerViewController
		let navVC = UINavigationController(rootViewController: wishListViewController)
		self.window?.rootViewController = navVC
		self.window?.makeKeyAndVisible()
		return true
	}
}


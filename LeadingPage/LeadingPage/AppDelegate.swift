//
//  AppDelegate.swift
//  LeadingPage
//
//  Created by Magic on 2018/2/23.
//  Copyright © 2018年 magic. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow.init(frame: UIScreen.main.bounds)
        let leadVC = ZGLeadPageVC()
        leadVC.block = { [weak self]() in
            self?.window?.rootViewController = ViewController()
            self?.window?.makeKeyAndVisible()
        }
        window?.rootViewController = leadVC
        window?.makeKeyAndVisible()
        
        return true
    }

}


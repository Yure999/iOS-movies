//
//  AppDelegate.swift
//  MoviesiOSKata
//
//  Created by Jorge Sánchez on 1/11/16.
//  Copyright © 2016 xurxodev. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    let router = Router()


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        router.installRootViewControllerIntoWindow(window!)
        
        return true
    }



}


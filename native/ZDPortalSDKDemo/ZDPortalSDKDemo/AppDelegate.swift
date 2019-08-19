//
//  AppDelegate.swift
//  ZDPortalSDKDemo
//
//  Created by bala-zt124 on 19/08/19.
//  Copyright © 2019 Bala. All rights reserved.
//

import UIKit
import ZohoDeskPortalSDK

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        //Have to replace APP-ID, ORG-ID and datacenter configured in ASAP set-up
        ZohoDeskPortalSDK.initializeSDK("App-ID", appId: "Org-ID", dataCenter: .IN)
        return true
    }

}


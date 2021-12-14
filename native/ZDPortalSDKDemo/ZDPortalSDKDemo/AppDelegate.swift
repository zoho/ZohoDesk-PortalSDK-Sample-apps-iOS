//
//  AppDelegate.swift
//  ZDPortalSDKDemo
//
//  Created by bala-zt124 on 19/08/19.
//  Copyright © 2019 Bala. All rights reserved.
//

import UIKit
import ZohoDeskPortalAPIKit
import ZohoDeskPortalConfiguration


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        /// Initializing ZohoDeskPortalSDK
        ///
        /// - parameter orgID: requested Your OrgID
        /// - parameter appID: requested Your AppID
        /// - parameter dataCenter: requested Your dataCenter
        
        ZohoDeskPortalSDK.initialize(orgID: "Your_Org_ID", appID: "Your_App_ID", dataCenter: .US)
       
        return true
    }

}


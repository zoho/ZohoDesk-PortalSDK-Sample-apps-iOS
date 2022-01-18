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
import ZDThemeKit


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
      
      // Override theme
        updateTheme()
      
      
        self.window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()
        window?.makeKeyAndVisible()
        return true
    }
  
    private func updateTheme(){
      // Have to import ZDThemeKit for access this function.
        ZDThemeManager.updateTheme(theme: ZDPThemeManager())
      
      // To override Dark mode have to use below fuction updateDarkTheme
      // You can use different class conform to ZDThemeProtocol for Light and Dark theme
      //ZDThemeManager.updateDarkTheme(theme: ZDPThemeManager())
    }

}


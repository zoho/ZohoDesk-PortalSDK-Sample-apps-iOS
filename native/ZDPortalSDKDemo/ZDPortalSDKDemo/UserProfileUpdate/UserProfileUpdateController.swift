//
//  UserProfileUpdateController.swift
//  ZDPortalSDKDemo
//
//  Created by bala-zt124 on 19/08/19.
//  Copyright © 2019 Bala. All rights reserved.
//

import UIKit
import ZohoDeskPortalSDK

class UserProfileUpdateController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "ZOHO Desk Demo"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func UpdateUserInformation(_ button:UIButton){
        
        /*
         *  Before updating a profile, the end-user should have authenticated.
         *
         *  For Updating a profile, Dictionary of key, value pair needs to be sent.
         *
         * The possible Keys are,
         * 1. twitter
         * 2. phone
         * 3. facebook
         * 4. name
         * 5. displayName
         * 6. mobile
         * 7. countryLocale
         * 8. timeZone
         *
         * */
        
        var body = [String : Any]()
        
        body["displayName"] = "User Display name"
        body["mobile"] = "123456"
        
        ZDProvoider.sharedInstance.UpdateUserInformation(userInfo: body, { (userInfo) in
           print("User Info Successfully updated")
        }) { (error) in
            print(error.debugDescription)
        }
    }
    
}

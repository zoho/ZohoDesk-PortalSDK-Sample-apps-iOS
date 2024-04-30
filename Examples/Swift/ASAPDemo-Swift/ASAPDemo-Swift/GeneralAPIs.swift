//
//  GeneralAPIs.swift
//  ASAPDemo-Swift
//
//  Created by vinoth-15074 on 26/04/24.
//

import Foundation
import ZohoDeskPortalAPIKit

class GeneralAPIs {
    private func initializeASAPSDK() {
        // Initializing ZohoDeskPortalSDK
        ///
        /// - parameter orgID: Your OrgID from Zoho Desk ASAP setup
        /// - parameter appID: Your AppID from Zoho Desk ASAP setup
        /// - parameter dataCenter:Your dataCenter from Zoho Desk ASAP setup
        ZohoDeskPortalSDK.initialize(orgID: "Your_orgID", appID: "Your_appID", dataCenter: .US)
    }
    
    private func enableLogs() {
        ZohoDeskPortalKit.enableLogs()
    }
    
    private func enablePushNotification() {
        
        guard let deviceTokenString = AppDelegate.deviceTokenString else { return }
        
        //Enable push notification service for ASAP ticket & agent chat modules
        ///- Parameters:
        /// - mode: Your mode of notification
        ///     - production: During production mode
        ///     - sandbox: During development mode
        ZohoDeskPortalKit.enablePushNotifications(deviceToken: deviceTokenString, mode: .production)
    }
    
    private func disablePushNotification() {
        guard let deviceTokenString = AppDelegate.deviceTokenString else { return }
        
        //Disable push notification service for ASAP ticket & agent chat modules
        ///- Parameters:
        /// - mode: Your mode of notification
        ///     - production: During production mode
        ///     - sandbox: During development mode
        ZohoDeskPortalKit.disablePushNotifications(deviceToken: deviceTokenString, mode: .production) { flag in
            //Boolean flag on completion of disable push notification
            flag
        }
    }
    
    private func getDepartmentList() {
        
        //To get departments in your ASAP AddOn
        ZohoDeskPortalKit.getDepartments { result in
            switch result {
            case .success(let departments):
                // Departments list downloaded
                departments
            case .failure(let error):
                // Departments list download exception
                error
            }
        }
    }
    
    private func getContactList() {
        
        /// - Parameter ids: ["ids": "id1,id2,..."]
        
        let ids: [String: String] = ["ids" : "id1,id2,id3,..."]
        
        //To get contact list
        //Authentication required to perform action
        ZohoDeskPortalKit.getContactsBy(ids: ids) { result in
            switch result {
            case .success(let contacts):
                //Contact list downloaded
                contacts
            case .failure(let error):
                //Contact list download exception
                error
            }
        }
    }
    
    private func getContact() {
        
        //To get user contact with email ID
        ZohoDeskPortalKit.getContactBy(email: "Your_emailID") { result in
            switch result {
            case .success(let contact):
                //Contact of the email id downloaded
                contact
            case .failure(let error):
                //Contact of the email id download exception
                error
            }
        }
    }
    
    private func searchContact() {
        
        /// - Parameter text: Search string of contacts
        let text: [String: String] = ["searchStr": "Search_text"]
        
        //To search contacts by text
        ZohoDeskPortalKit.searchContactsBy(text: text) { result in
            switch result {
            case .success(let contacts):
                //Contact list downloaded
                contacts
            case .failure(let error):
                //Contact list download exception
                error
            }
        }
    }
    
    private func getAccountList() {
        
        //Parameters to download account list
        /// - Parameter params: Params to filter the account
        let params: [String: String] = [ "startsWith": "Accounts_name_starts_with"]
        
        //To get account list
        ZohoDeskPortalKit.getAccounts(params: params) { result in
            switch result {
            case .success(let accounts):
                //Accounts list downloaded
                accounts
            case .failure(let error):
                //Accounts list download exception
                error
            }
        }
    }
    
    
    // MARK: User Authentication
    
    private var isUserLoggedIn: Bool {
        //Flag whether user loggedIn in ASAP
        ZohoDeskPortalKit.isUserLoggedIn
    }
    
    private func login() {
        
        let jwtToken: String = "JWTToken"
        
        //To login as a user in ASAP
        ZohoDeskPortalKit.login(withJWTToken: jwtToken) { flag in
            flag //Flag whether the login successful
        }
    }
    
    private func signIn() {
        
        //To login as a user in ASAP
        //Login via web page
        ZohoDeskPortalKit.signIn { flag in
            flag //Flag whether the login successful
        }
    }
    
    private func signUp() {
        
        let language = "Language_Code"
        
        //To signUp as a user in ASAP
        //SignUp via web page with preferred language
        ZohoDeskPortalKit.signUp(inLanguage: language) { flag in
            flag //Flag whether the login successful
        }
    }
    
    private func logout() {
        
        //To logout as from ASAP
        ZohoDeskPortalKit.logout { flag in
            flag //Flag whether the logout successful
        }
    }
    
    // MARK: User Info
    
    private func getUserInformation() {
        
        //To get user information
        ZohoDeskPortalKit.getUserInformation { result in
            switch result {
            case .success(let profile):
                //User information downloaded
                profile
            case .failure(let error):
                //User information download exception
                error
            }
        }
    }
    
    private func updateUserInformation() {
        
        let params: [String: String] = [
            "emailAddress" : "Email_Address",
            "twitter": "Twitter_username",
            "phone": "Phone_Number",
            "facebook": "Facebook_Info",
            "name": "User_Name",
            "displayName": "User_Display_Name",
            "mobile": "Mobile_Number",
            "countryLocale": "Country_Locale",
            "timeZone": "Time_Zone"
        ]
        
        //To update user information
        ZohoDeskPortalKit.updateUserInformation(with: params) { result in
            switch result {
            case .success(let profile):
                //Updated user information downloaded
                profile
            case .failure(let error):
                //Updated user information download exception
                error
            }
        }
    }
}

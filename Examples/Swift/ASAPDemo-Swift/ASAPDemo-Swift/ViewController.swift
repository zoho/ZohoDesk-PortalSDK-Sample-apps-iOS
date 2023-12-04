//
//  ViewController.swift
//  ASAPDemo-Swift
//
//  Created by bala-zt124 on 04/12/23.
//

import UIKit
import ZohoDeskPortalCore
import ZohoDeskPortalConfiguration

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateASAPLightTheme()
        updateASAPDarkTheme()
    }
    
    private func updateASAPLightTheme(){
        ZDPThemeManager.updateLightTheme(theme: DemoLightThemeClass())
    }
    
    private func updateASAPDarkTheme(){
        ZDPThemeManager.updateDarkTheme(theme: DemoDarkThemeClass())
    }
    
    @IBAction func showHomePage(){
        // Method for launch ZohoDeskASAP Home page
        ZDPortalHome.show()
    }
}

//MARK:- ASAP Theme custom class
// To customize the theme, you have to conform the ZDPThemeProtocol
// For more reference - https://help.zoho.com/portal/en/kb/desk/developer-space/asap/ios-sdk/articles/working-with-the-asap-sdk-for-ios#Customizing_the_Add-On_UI

class DemoLightThemeClass : ZDPThemeProtocol{
    var navigationBarBackgroundColor: UIColor = .white
    var navigationBarTextColor: UIColor = .black
    
    // You can customize othe properties using following varible
    // Refer the Theme Customization image in document for more detail
    
    //var themeColor: UIColor = Your Color
    //var primaryBackgroundColor: UIColor = Your Color
    //var secondaryBackgroundColor: UIColor = Your Color
    //var primaryTextColor: UIColor = Your Color
    //var secondaryTextColor: UIColor = Your Color
    //var placeholderTextColor: UIColor = Your Color
    //var iconColor: UIColor = Your Color
    //var borderColor: UIColor = Your Color
    //var separatorColor: UIColor = Your Color
    //var selectedColor: UIColor = Your Color
    //var failureColor: UIColor = Your Color
}

class DemoDarkThemeClass : ZDPThemeProtocol{
    var navigationBarBackgroundColor: UIColor = .black
    var navigationBarTextColor: UIColor = .white
    
    // You can customize othe properties using following varible
    // Refer the Theme Customization image in document for more detail
    
    //var themeColor: UIColor = Your Color
    //var primaryBackgroundColor: UIColor = Your Color
    //var secondaryBackgroundColor: UIColor = Your Color
    //var primaryTextColor: UIColor = Your Color
    //var secondaryTextColor: UIColor = Your Color
    //var placeholderTextColor: UIColor = Your Color
    //var iconColor: UIColor = Your Color
    //var borderColor: UIColor = Your Color
    //var separatorColor: UIColor = Your Color
    //var selectedColor: UIColor = Your Color
    //var failureColor: UIColor = Your Color
}


//
//  Theme.swift
//  ZDPortalSDKDemo
//
//  Created by bala-zt124 on 18/01/22.
//  Copyright © 2022 Bala. All rights reserved.
//

import Foundation
import UIKit
import ZDThemeKit

class ZDPThemeManager: ZDThemeProtocol {
  
  //Here, ZDThemeProtocol contains the list of properties that represent the most used colors across the SDK, such as primaryTextColor and navigationBarTextColor among others. All properties in the protocol are optional. You can create any class conforming to this protocol, implement one or more properties, and pass an object of that class to the updateTheme or updateDarkTheme method. The colors you set in the class will override the default theme.
  
  // Navigation variables
    var navigationBarBackgroundColor: UIColor = .red
    var navigationBarTitleColor: UIColor = .white
    var navigationBarButtonColor: UIColor = .white
  
  // Common variables
    var applicationColor: UIColor = <#UIColor#>
    var primaryBackgroundColor: UIColor = <#UIColor#>
    var secondaryBackgroundColor: UIColor = <#UIColor#>
    var tertiaryBackgroundColor: UIColor = <#UIColor#>
    var primaryTextColor: UIColor = <#UIColor#>
    var secondaryTextColor: UIColor = <#UIColor#>
    var tertiaryTextColor: UIColor = <#UIColor#>
}

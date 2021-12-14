//
//  EventTracking.swift
//  ZDPortalSDKDemo
//
//  Created by bala-zt124 on 14/12/21.
//  Copyright © 2021 Bala. All rights reserved.
//

import Foundation
import ZohoDeskPortalConfiguration

class EventTracking {
    func eventTrackingCallback() {
        /// Event tracking
        ZDPortalConfiguration.analyticsTracker { analytics in
            
            /// - returns: ZohoDeskPortalConfiguration.ZDPAnalyticsTrackingType
            let type = analytics?.getTrackingType()
            
            /// - returns: ZohoDeskPortalConfiguration.ZDPortalControllers
            let screen = analytics?.getEventScreen()
            
            /// - returns: ZohoDeskPortalConfiguration.ZDPortalControllers
            let source = analytics?.getEventSource()
            
            /// - returns: ZohoDeskPortalConfiguration.ZDPortalUIAction
            let action = analytics?.getEventAction()
            
            /// - returns: String?
            let value = analytics?.getlabelValue()
            
            /// - returns: String?
            let itemID = analytics?.getItemId()
        }
    }
}

//
//  SalesIQConfigurations.swift
//  ASAPDemo-Swift
//
//  Created by Rajesh R on 21/01/25.
//
import Foundation
import ZohoDeskPortalSalesIQ


// MARK: - ASAP SalesIQConfigurations APIs
/// Note: These SalesIQ configurations are supported from ZohoDeskPortalSalesIQ v4.0.6 onwards.
// For more details about the configurations, refer to the documentation: SalesIQ Configurations Link:-https://help.zoho.com/portal/en/kb/desk/developer-space/asap/ios-sdk
class SalesIQConfigurations {
    
    /// Sets SalesIQ configurations before the ASAP SDK is initialized.
    /// This function provides all the SalesIQ configurations. You can customize and add it based on your requirements.
    static func setSalesIQConfiguration() {
        // Configurations are only used inside this callback
        ZDPortalSalesIQ.setCallbackOnInit(
            onSuccess: {
                // General SalesIQ configurations
                ZDPortalSalesIQ.showLauncher(.never) // Hides the launcher by default
                ZDPortalSalesIQ.enableDragToDismiss(false) // Disables drag-to-dismiss
                ZDPortalSalesIQ.setLoggerEnabled(false) // Disables logging
                ZDPortalSalesIQ.hideQueueTime(true) // Hides queue time
                ZDPortalSalesIQ.setConversationVisibility(true) // Enables conversation visibility
                ZDPortalSalesIQ.showFeedbackAfterSkip(true) // Shows feedback after skipping a chat
                ZDPortalSalesIQ.showOfflineMessage(true) // Enables offline message display
                ZDPortalSalesIQ.setConversationTitle("Conversations") // Sets conversation title
                ZDPortalSalesIQ.setOfflineMessage("Offline Messages") // Sets offline message text
                ZDPortalSalesIQ.setKnowledgeBaseVisibility(false) // Hides the knowledge base

                // Configurations for individual chat visibility components
                ZDPortalSalesIQ.setChatVisibility(.preChatForm, visible: true) // Enables pre-chat form
                ZDPortalSalesIQ.setChatVisibility(.conversationHistory, visible: true) // Shows conversation history
                ZDPortalSalesIQ.setChatVisibility(.visitorName, visible: true) // Shows visitor name
                ZDPortalSalesIQ.setChatVisibility(.attenderImageInChat, visible: true) // Shows attender image in chat
                ZDPortalSalesIQ.setChatVisibility(.attenderImageOnLauncher, visible: true) // Shows attender image on launcher
                ZDPortalSalesIQ.setChatVisibility(.screenshotOption, visible: true) // Enables screenshot option
                ZDPortalSalesIQ.setChatVisibility(.photoLibrary, visible: true) // Enables photo library access
                ZDPortalSalesIQ.setChatVisibility(.mediaCapture, visible: true) // Enables media capture
                ZDPortalSalesIQ.setChatVisibility(.fileSharing, visible: true) // Enables file sharing
                ZDPortalSalesIQ.setChatVisibility(.inAppNotifications, visible: true) // Enables in-app notifications
                ZDPortalSalesIQ.setChatVisibility(.emailTranscript, visible: true) // Enables email transcript option
                ZDPortalSalesIQ.setChatVisibility(.rating, visible: true) // Enables rating option
                ZDPortalSalesIQ.setChatVisibility(.feedback, visible: true) // Enables feedback option
                ZDPortalSalesIQ.setChatVisibility(.reopen, visible: true) // Enables chat reopening
                ZDPortalSalesIQ.setChatVisibility(.end, visible: true) // Enables end chat option
                ZDPortalSalesIQ.setChatVisibility(.endWhenInQueue, visible: true) // Enables end option while in queue
                ZDPortalSalesIQ.setChatVisibility(.endWhenBotConnected, visible: true) // Enables end option while bot is connected
                ZDPortalSalesIQ.setChatVisibility(.endWhenOperatorConnected, visible: true) // Enables end option while operator is connected
                ZDPortalSalesIQ.setChatVisibility(.queuePosition, visible: true) // Shows queue position
            },
            onError: {
                print("Failed while initializing SalesIQ") // Error logging for initialization failure
            }
        )
    }
}

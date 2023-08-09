//
//  AppDelegate.m
//  ASAPDemo-ObjC
//
//  Created by bala-zt124 on 09/08/23.
//

#import "AppDelegate.h"
@import ZohoDeskPortalAPIKit;

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Initializing ZohoDeskPortalSDK
            ///
            /// - parameter orgID: Your OrgID from Zoho Desk ASAP setup
            /// - parameter appID: Your AppID from Zoho Desk ASAP setup
            /// - parameter dataCenter:Your dataCenter from Zoho Desk ASAP setup
            
    [ZohoDeskPortalSDK initializeWithOrgID:@"Your_Org_ID" appID:@"Your_App_ID" dataCenter:ZDPDataCenterUS];
    
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end

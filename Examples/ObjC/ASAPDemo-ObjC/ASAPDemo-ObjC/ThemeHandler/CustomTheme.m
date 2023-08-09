//
//  CustomTheme.m
//  ASAPDemo-ObjC
//
//  Created by bala-zt124 on 09/08/23.
//

#import "CustomTheme.h"

@implementation CustomTheme

// Color variable used in Zoho desk portal SDK
@synthesize themeColor;
@synthesize primaryBackgroundColor;
@synthesize secondaryBackgroundColor;
@synthesize primaryTextColor;
@synthesize secondaryTextColor;
@synthesize placeholderTextColor;
@synthesize navigationBarBackgroundColor;
@synthesize navigationBarTextColor;

- (instancetype)init {
    return self;
}

// Override the colors
/// you can override all colors for more deatail look at https://help.zoho.com/portal/en/kb/desk/developer-space/asap/ios-sdk/articles/working-with-the-asap-sdk-for-ios-version-3-0#Customizing_the_Add-On_UI
///
- (UIColor *)themeColor{
    return [UIColor blueColor];
}

- (UIColor *)navigationBarBackgroundColor{
    return [UIColor redColor];
}

@end

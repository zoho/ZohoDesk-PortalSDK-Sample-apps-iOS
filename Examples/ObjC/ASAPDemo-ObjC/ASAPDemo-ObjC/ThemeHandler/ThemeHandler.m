//
//  ThemeHandler.m
//  ASAPDemo-ObjC
//
//  Created by bala-zt124 on 09/08/23.
//

#import "ThemeHandler.h"
#import "CustomTheme.h"

@implementation ThemeHandler

-(void) setLightTheme {
    // set light theme
    [ZDPThemeManager setThemeWithType:ZDPThemeTypeLight];
}

-(void) setDarkTheme {
    // set Dark theme
    [ZDPThemeManager setThemeWithType:ZDPThemeTypeDark];
}

-(void) setSystemTheme {
    // set system theme
    [ZDPThemeManager setThemeWithType:ZDPThemeTypeSystem];
}

-(void)setCustomLightTheme{
    // customize light theme
    CustomTheme * theme = [[CustomTheme alloc] init];
    [ZDPThemeManager updateLightThemeWithTheme:theme];
}

-(void)setCustomDarkTheme{
    // customize Dark theme
    CustomTheme * theme = [[CustomTheme alloc] init];
    [ZDPThemeManager updateDarkThemeWithTheme:theme];
}

@end

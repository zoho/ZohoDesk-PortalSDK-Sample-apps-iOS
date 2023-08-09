//
//  ViewController.m
//  ASAPDemo-ObjC
//
//  Created by bala-zt124 on 09/08/23.
//

#import "ViewController.h"
#import "ThemeHandler.h"
@import ZohoDeskPortalCore;
@import ZohoDeskPortalConfiguration;

@import ZohoDeskPortalAPIKit;
@import ZohoDeskPortalKB;
@import ZohoDeskPortalChat;
@import ZohoDeskPortalTicket;
@import ZohoDeskPortalCommunity;
@import ZohoDeskPortalLiveChat;

@interface ViewController ()

@end

@implementation ViewController

ThemeHandler * theme;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // Set custom Theme
    theme = [[ThemeHandler alloc] init];
    [theme setCustomLightTheme];
}

-(IBAction)showHomePage:(id)sender{
    [ZDPortalHome showWithTitle:nil navigationMode:ZDPNavigationModePush];
}


@end

//
//  SmoothTransAppDelegate.m
//  SmoothTrans
//
//  Created by Martin Volerich on 5/29/10.
//  Copyright Bill Bear Technologies 2010. All rights reserved.
//

#import "SmoothTransAppDelegate.h"
#import "SmoothTransViewController.h"

@implementation SmoothTransAppDelegate

@synthesize window;
@synthesize viewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];

	return YES;
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end

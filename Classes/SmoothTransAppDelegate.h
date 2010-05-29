//
//  SmoothTransAppDelegate.h
//  SmoothTrans
//
//  Created by Martin Volerich on 5/29/10.
//  Copyright Bill Bear Technologies 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SmoothTransViewController;

@interface SmoothTransAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    SmoothTransViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet SmoothTransViewController *viewController;

@end


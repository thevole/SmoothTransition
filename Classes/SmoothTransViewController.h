//
//  SmoothTransViewController.h
//  SmoothTrans
//
//  Created by Martin Volerich on 5/29/10.
//  Copyright Bill Bear Technologies 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SmoothTransViewController : UIViewController {
    UIImageView *_thumb;
    UIImageView *_thumb2;
}

@property (nonatomic, retain) IBOutlet UIImageView *thumb;
@property (nonatomic, retain) IBOutlet UIImageView *thumb2;

@end


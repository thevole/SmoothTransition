//
//  FullScreenViewController.h
//  SmoothTrans
//
//  Created by Martin Volerich on 5/29/10.
//  Copyright 2010 Bill Bear Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface FullScreenViewController : UIViewController {
    UIImageView *_imageView;
    UIImage *_image;
    CGRect _startRect;
}

@property (nonatomic, retain) IBOutlet UIImageView *imageView;
@property (nonatomic, retain) UIImage *image;
@property CGRect startRect;

@end

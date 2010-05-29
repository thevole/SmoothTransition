    //
//  FullScreenViewController.m
//  SmoothTrans
//
//  Created by Martin Volerich on 5/29/10.
//  Copyright 2010 Bill Bear Technologies. All rights reserved.
//

#import "FullScreenViewController.h"
#import <QuartzCore/QuartzCore.h>

@implementation FullScreenViewController

@synthesize imageView = _imageView;
@synthesize startRect = _startRect;
@synthesize image = _image;

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

- (void) animationDidStop:(CAAnimation *)anim finished:(BOOL)flag {
    [self dismissModalViewControllerAnimated:YES];
}

- (void)handleTap:(UITapGestureRecognizer *)recognizer {
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.7f];
    self.imageView.frame = self.startRect;
    [UIView setAnimationDelegate:self];
    [UIView commitAnimations];
    
    //[self dismissModalViewControllerAnimated:NO];
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.imageView setImage:self.image];
    
    UITapGestureRecognizer *recognizer = [[UITapGestureRecognizer alloc]
                                          initWithTarget:self action:@selector(handleTap:)];
    [self.imageView addGestureRecognizer:recognizer];
    [recognizer release];
}



- (void) viewDidAppear:(BOOL)animated {
    DLog(@"Did Appear");
    CGRect targetRect = self.imageView.frame;
    
    self.imageView.frame = self.startRect;
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.7f];
    self.imageView.frame = targetRect;
    
    [UIView commitAnimations];
    
}



- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Overriden to allow any orientation.
    return YES;
}


- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}


- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    self.imageView = nil;
    self.image = nil;
}


- (void)dealloc {
    [_image release], _image = nil;
    [_imageView release], _imageView = nil;
    [super dealloc];
}


@end

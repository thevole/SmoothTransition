//
//  SmoothTransViewController.m
//  SmoothTrans
//
//  Created by Martin Volerich on 5/29/10.
//  Copyright Bill Bear Technologies 2010. All rights reserved.
//

#import "SmoothTransViewController.h"
#import "FullScreenViewController.h"

@implementation SmoothTransViewController

@synthesize thumb = _thumb;
@synthesize thumb2 = _thumb2;

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


- (void)handleTap:(UITapGestureRecognizer *)recognizer {
    DLog(@"Tap");
    UIImageView *vw = (UIImageView *)[recognizer view];
    
    CGRect startRect = vw.frame;

    FullScreenViewController *fullScreenController = [[FullScreenViewController alloc] initWithNibName:@"FullScreenViewController" bundle:nil];
    fullScreenController.startRect = startRect;
    fullScreenController.image = vw.image;
    [fullScreenController setModalPresentationStyle:UIModalPresentationFullScreen];
    [fullScreenController setModalTransitionStyle:UIModalTransitionStyleCrossDissolve];
    [self presentModalViewController:fullScreenController animated:NO];
    [fullScreenController release];
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
    self.thumb.image = [UIImage imageNamed:@"photo.png"];
    self.thumb2.image = [UIImage imageNamed:@"photo2.png"];
    UITapGestureRecognizer *recognizer = [[UITapGestureRecognizer alloc]
                                          initWithTarget:self action:@selector(handleTap:)];
    [self.thumb addGestureRecognizer:recognizer];

    [recognizer release];
    recognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
    [self.thumb2 addGestureRecognizer:recognizer];
    [recognizer release];
}





// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
    self.thumb = nil;
}


- (void)dealloc {
    [_thumb release], _thumb = nil;
    [super dealloc];
}


@end

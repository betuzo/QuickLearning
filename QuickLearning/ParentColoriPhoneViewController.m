//
//  ParentColoriPhoneViewController.m
//  QuickLearning
//
//  Created by Roberto Salvador Olguín Lozano on 03/04/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import "ParentColoriPhoneViewController.h"

@implementation ParentColoriPhoneViewController

@synthesize colorNavigationController = _colorNavigationController;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    ColoriPhoneViewController *controller = [[ColoriPhoneViewController alloc]initWithNibName:@"ColoriPhoneViewController" bundle:nil];
    
	_colorNavigationController = [[UINavigationController alloc] initWithRootViewController:controller];
    
    [_colorNavigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"logoqlnav"] forBarMetrics:UIBarMetricsDefault];
    
	[_colorNavigationController.view setFrame:self.view.bounds];
    
	[self.view addSubview:_colorNavigationController.view];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end

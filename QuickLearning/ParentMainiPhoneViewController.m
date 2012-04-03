//
//  ParentMainiPhoneViewController.m
//  QuickLearning
//
//  Created by Roberto Salvador Olguín Lozano on 03/04/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import "ParentMainiPhoneViewController.h"

@implementation ParentMainiPhoneViewController

@synthesize mainNavigationController = _mainNavigationController;

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
    
    MainiPhoneViewController *controller = [[MainiPhoneViewController alloc]initWithNibName:@"MainiPhoneViewController" bundle:nil];
    
	_mainNavigationController = [[UINavigationController alloc] initWithRootViewController:controller];
    
    [_mainNavigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"logoqlnav"] forBarMetrics:UIBarMetricsDefault];
    
	[_mainNavigationController.view setFrame:self.view.bounds];
    
	[self.view addSubview:_mainNavigationController.view];
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

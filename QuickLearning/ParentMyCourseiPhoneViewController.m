//
//  ParentMyCourseiPhoneViewController.m
//  QuickLearning
//
//  Created by Roberto Salvador Olguín Lozano on 03/04/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import "ParentMyCourseiPhoneViewController.h"

@implementation ParentMyCourseiPhoneViewController

@synthesize myCourseNavigationController = _myCourseNavigationController;

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
    
    MyCourseiPhoneViewController *controller = [[MyCourseiPhoneViewController alloc]initWithNibName:@"MyCourseiPhoneViewController" bundle:nil];
    
	_myCourseNavigationController = [[UINavigationController alloc] initWithRootViewController:controller];
    
    [_myCourseNavigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"logoqlnav"] forBarMetrics:UIBarMetricsDefault];
    
	[_myCourseNavigationController.view setFrame:self.view.bounds];
    
	[self.view addSubview:_myCourseNavigationController.view];
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

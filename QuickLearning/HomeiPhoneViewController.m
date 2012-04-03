//
//  HomeiPhoneViewController.m
//  QuickLearning
//
//  Created by Roberto Salvador Olguín Lozano on 02/04/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import "HomeiPhoneViewController.h"

@implementation HomeiPhoneViewController

@synthesize homeTabBarController = _homeTabBarController;

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
    
    CGRect frameNavigation;
    
    frameNavigation.origin.x = 0;
    frameNavigation.origin.y = 0;
    frameNavigation.size.width = 320;
    frameNavigation.size.height = 44;
	
	UIViewController *viewController1 = [[MainiPhoneViewController alloc] initWithNibName:@"MainiPhoneViewController" bundle:nil];
    
    UINavigationController *navigationController1 = [[UINavigationController alloc] initWithRootViewController:viewController1];
    [navigationController1.view setFrame:frameNavigation];
    [navigationController1.view setFrame:viewController1.view.bounds];

    [navigationController1.navigationBar setBackgroundImage:[UIImage imageNamed:@"logoqlnav"] forBarMetrics:UIBarMetricsDefault];
    [viewController1.view addSubview:navigationController1.view];
    
    UITabBarItem *tab1 = [[UITabBarItem alloc] initWithTitle:@"Main"
                                                       image:[UIImage imageNamed:@"destacados-on"] tag:1];
    [viewController1 setTabBarItem:tab1];  
    
	UIViewController *viewController2 = [[ColoriPhoneViewController alloc] initWithNibName:@"ColoriPhoneViewController" bundle:nil];
    
    UINavigationController *navigationController2 = [[UINavigationController alloc] initWithRootViewController:viewController2];
    [navigationController2.view setFrame:frameNavigation];
    [navigationController2.navigationBar setBackgroundImage:[UIImage imageNamed:@"logoqlnav"] forBarMetrics:UIBarMetricsDefault];
    [viewController2.view addSubview:navigationController2.view];
    
    UITabBarItem *tab2 = [[UITabBarItem alloc] initWithTitle:@"Color"
                                                       image:[UIImage imageNamed:@"productos-on"] tag:2];
    [viewController2 setTabBarItem:tab2];      
    
	UIViewController *viewController3 = [[SchoolsiPhoneViewController alloc] initWithNibName:@"SchoolsiPhoneViewController" bundle:nil];
    
    UINavigationController *navigationController3 = [[UINavigationController alloc] initWithRootViewController:viewController3];
    [navigationController3.view setFrame:frameNavigation];
    [navigationController3.navigationBar setBackgroundImage:[UIImage imageNamed:@"logoqlnav"] forBarMetrics:UIBarMetricsDefault];
    [viewController3.view addSubview:navigationController3.view];
    
    UITabBarItem *tab3 = [[UITabBarItem alloc] initWithTitle:@"My course"
                                                       image:[UIImage imageNamed:@"tiendas-on"] tag:3];
    [viewController3 setTabBarItem:tab3];  
    
    UIViewController *viewController4 = [[MyCourseiPhoneViewController alloc] initWithNibName:@"MyCourseiPhoneViewController" bundle:nil];
    
    UINavigationController *navigationController4 = [[UINavigationController alloc] initWithRootViewController:viewController4];
    [navigationController4.view setFrame:frameNavigation];
    [navigationController4.navigationBar setBackgroundImage:[UIImage imageNamed:@"logoqlnav"] forBarMetrics:UIBarMetricsDefault];
    [viewController4.view addSubview:navigationController4.view];
    
    UITabBarItem *tab4 = [[UITabBarItem alloc] initWithTitle:@"Schools"
                                                       image:[UIImage imageNamed:@"carrito-on"] tag:4];
    [viewController4 setTabBarItem:tab4];    
    
	
	_homeTabBarController = [[UITabBarController alloc] init];
    
	_homeTabBarController.viewControllers = [NSArray arrayWithObjects:viewController1, viewController2,viewController3,viewController4,nil];
 	[_homeTabBarController.view setFrame:self.view.bounds];
	
	[self.view addSubview:_homeTabBarController.view];

    // Do any additional setup after loading the view from its nib.
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
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
		return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft || interfaceOrientation == UIInterfaceOrientationLandscapeRight );
        //return YES;
    }
}

@end

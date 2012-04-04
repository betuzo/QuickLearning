//
//  ViewController.m
//  QuickLearning
//
//  Created by Roberto Salvador Olguín Lozano on 02/04/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

@synthesize loginViewiPad = _loginViewiPad;
@synthesize loginViewiPhone = _loginViewiPhone;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
	if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        
		_loginViewiPhone = [[LoginiPhoneViewController alloc]initWithNibName:@"LoginiPhoneViewController" bundle:nil];
		
		[_loginViewiPhone.view setFrame:self.view.bounds];
		[self.view addSubview:_loginViewiPhone.view];
		
    } else {
        
		_loginViewiPad = [[LoginiPadViewController alloc]initWithNibName:@"LoginiPadViewController" bundle:nil];
		
		[_loginViewiPad.view setFrame:self.view.bounds];
		[self.view addSubview:_loginViewiPad.view];
		
		
    }
    
    [QuickLearningService initializeDatosTest];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end

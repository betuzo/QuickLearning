//
//  SchoolsiPhoneViewController.m
//  QuickLearning
//
//  Created by Roberto Salvador Olguín Lozano on 02/04/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import "SchoolsiPhoneViewController.h"

@implementation SchoolsiPhoneViewController

@synthesize schoolsMapView = _schoolsMapView;

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
    [self generatePins];
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
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)generatePins
{
    for (id sucursal in [QuickLearningService sucursales]) 
    {
        CLLocationCoordinate2D theCoordinate;
        theCoordinate.latitude = [[sucursal objectAtIndex:5] doubleValue];
        theCoordinate.longitude = [[sucursal objectAtIndex:6] doubleValue];
        
        SchoolPinAnotation* myAnnotation=[[SchoolPinAnotation alloc] init];
        
        myAnnotation.coordinate=theCoordinate;
        myAnnotation.title=[sucursal objectAtIndex:1];
        myAnnotation.subtitle=[sucursal objectAtIndex:2];
        
        [_schoolsMapView addAnnotation:myAnnotation];
    }
}

@end

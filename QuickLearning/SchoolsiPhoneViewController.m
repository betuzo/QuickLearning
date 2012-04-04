//
//  SchoolsiPhoneViewController.m
//  QuickLearning
//
//  Created by Roberto Salvador Olguín Lozano on 02/04/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import "SchoolsiPhoneViewController.h"

#define ITEM_SPACING 120

#define NUMBER_OF_ITEMS ((UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)? 19: 12)

@implementation SchoolsiPhoneViewController

@synthesize schoolsMapView = _schoolsMapView;

@synthesize name = _name;

@synthesize address = _address;

@synthesize email = _email;

@synthesize telephone = _telephone;

@synthesize carousel;

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
    carousel.type = iCarouselTypeCylinder;
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

#pragma mark - mapview delegate 

- (MKAnnotationView *)mapView:(MKMapView *)map viewForAnnotation:(id <MKAnnotation>)annotation
{
    static NSString *AnnotationViewID = @"annotationViewID";
	
    MKAnnotationView *annotationView = (MKAnnotationView *)[_schoolsMapView dequeueReusableAnnotationViewWithIdentifier:AnnotationViewID];
	
    if (annotationView == nil)
    {
        annotationView = [[MKAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:AnnotationViewID];
    }
	
	
	if ([annotation isKindOfClass:[SchoolPinAnotation class]]) {
		annotationView.image = [UIImage imageNamed:@"pinQ.png"];
		annotationView.annotation = annotation;
		annotationView.canShowCallout = YES;
		UIButton* rightButton = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
		annotationView.rightCalloutAccessoryView = rightButton;
		
		
		return annotationView;
	}
	else{
	    return nil;
	}
    
	
}

- (void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control
{
	
	//StoresDescriptionViewController *storesDetailViewController = [[StoresDescriptionViewController alloc]initWithNibName:@"StoresDescriptionViewController" bundle:nil];
	//[self.navigationController pushViewController:storesDetailViewController animated:YES];
}

#pragma mark -
#pragma mark iCarousel methods

- (NSUInteger)numberOfItemsInCarousel:(iCarousel *)carousel
{
    return [[QuickLearningService sucursales] count];
}

- (UIView *)carousel:(iCarousel *)carousel viewForItemAtIndex:(NSUInteger)index reusingView:(UIView *)view
{ 
	UIButton *button = (UIButton *)view;
	if (button == nil)
	{
        NSString *fileName = [NSString stringWithFormat:@"%@.%@", [[[QuickLearningService sucursales] objectAtIndex:index]objectAtIndex:0], @"jpg"];
		//no button available to recycle, so create new one
		UIImage *image = [UIImage imageNamed:fileName];
		button = [UIButton buttonWithType:UIButtonTypeCustom];
		button.frame = CGRectMake(0.0f, 0.0f, 100.0f, 100.0f);
		[button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
		[button setBackgroundImage:image forState:UIControlStateNormal];
		button.titleLabel.font = [button.titleLabel.font fontWithSize:20];
		[button addTarget:self action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpInside];
	}
	
	//set button label
	[button setTitle:[[[QuickLearningService sucursales] objectAtIndex:index]objectAtIndex:1] forState:UIControlStateNormal];
	
	return button;
}

- (CGFloat)carouselItemWidth:(iCarousel *)carousel
{
    return ITEM_SPACING;
}

#pragma mark -
#pragma mark Button tap event

- (void)buttonTapped:(UIButton *)sender
{
	//get item index for button
	NSInteger index = [carousel indexOfItemView:sender];
	
    [[[UIAlertView alloc] initWithTitle:@"Button Tapped"
                                 message:[NSString stringWithFormat:@"You tapped button number %i", index]
                                delegate:nil
                       cancelButtonTitle:@"OK"
                       otherButtonTitles:nil]  show];
}

- (BOOL)carouselShouldWrap:(iCarousel *)carousel
{
    return YES;
}

@end

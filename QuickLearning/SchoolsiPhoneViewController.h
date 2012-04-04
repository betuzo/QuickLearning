//
//  SchoolsiPhoneViewController.h
//  QuickLearning
//
//  Created by Roberto Salvador Olguín Lozano on 02/04/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QuickLearningService.h"
#import <MapKit/MapKit.h>
#import "SchoolPinAnotation.h"
#import "iCarousel.h"

@interface SchoolsiPhoneViewController : UIViewController <MKMapViewDelegate , MKAnnotation,iCarouselDataSource, iCarouselDelegate>
{
	IBOutlet MKMapView *schoolsMapView;
}

@property (nonatomic , strong) IBOutlet MKMapView *schoolsMapView;

@property (nonatomic, retain) IBOutlet iCarousel *carousel;

@property (nonatomic, retain) IBOutlet UILabel *name;

@property (nonatomic, retain) IBOutlet UILabel *address;

@property (nonatomic, retain) IBOutlet UILabel *email;

@property (nonatomic, retain) IBOutlet UILabel *telephone;

- (void)generatePins;

@end

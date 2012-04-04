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

@interface SchoolsiPhoneViewController : UIViewController <MKMapViewDelegate , MKAnnotation>
{
	IBOutlet MKMapView *schoolsMapView;
}

@property (nonatomic , strong) IBOutlet MKMapView *schoolsMapView;

- (void)generatePins;

@end

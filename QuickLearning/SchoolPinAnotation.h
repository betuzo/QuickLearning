//
//  SchoolPinAnotation.h
//  QuickLearning
//
//  Created by Roberto Salvador Olguín Lozano on 04/04/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface SchoolPinAnotation : NSObject<MKAnnotation>
{
	CLLocationCoordinate2D coordinate;
	NSString * title;
	NSString * subtitle;
}

@property (nonatomic ,assign) CLLocationCoordinate2D coordinate;

@property (nonatomic ,copy) NSString * title;

@property (nonatomic ,copy) NSString * subtitle;
@end

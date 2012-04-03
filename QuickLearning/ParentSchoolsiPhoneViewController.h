//
//  ParentSchoolsiPhoneViewController.h
//  QuickLearning
//
//  Created by Roberto Salvador Olguín Lozano on 03/04/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SchoolsiPhoneViewController.h"

@interface ParentSchoolsiPhoneViewController : UIViewController
{
	UINavigationController *schoolsNavigationController;
    
}

@property (nonatomic,strong) UINavigationController *schoolsNavigationController;
@end

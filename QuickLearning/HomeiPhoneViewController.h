//
//  HomeiPhoneViewController.h
//  QuickLearning
//
//  Created by Roberto Salvador Olguín Lozano on 02/04/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ParentMyCourseiPhoneViewController.h"
#import "ParentColoriPhoneViewController.h"
#import "ParentSchoolsiPhoneViewController.h"
#import "ParentMainiPhoneViewController.h"

@interface HomeiPhoneViewController : UIViewController
{
	UITabBarController *homeTabBarController;
}
@property (nonatomic , strong) UITabBarController *homeTabBarController;
@end

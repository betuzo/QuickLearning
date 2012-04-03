//
//  ParentMainiPhoneViewController.h
//  QuickLearning
//
//  Created by Roberto Salvador Olguín Lozano on 03/04/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainiPhoneViewController.h"

@interface ParentMainiPhoneViewController : UIViewController
{
	UINavigationController *mainNavigationController;
    
}

@property (nonatomic,strong) UINavigationController *mainNavigationController;
@end

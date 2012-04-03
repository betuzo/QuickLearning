//
//  ParentColoriPhoneViewController.h
//  QuickLearning
//
//  Created by Roberto Salvador Olguín Lozano on 03/04/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ColoriPhoneViewController.h"

@interface ParentColoriPhoneViewController : UIViewController
{
	UINavigationController *colorNavigationController;
    
}

@property (nonatomic,strong) UINavigationController *colorNavigationController;
@end

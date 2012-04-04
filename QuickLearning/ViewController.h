//
//  ViewController.h
//  QuickLearning
//
//  Created by Roberto Salvador Olguín Lozano on 02/04/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LoginiPadViewController.h"
#import "LoginiPhoneViewController.h"
#import "QuickLearningService.h"

@interface ViewController : UIViewController
{
	LoginiPhoneViewController *loginViewiPohone;
	LoginiPadViewController *loginViewiPad;
}

@property (nonatomic,strong) LoginiPhoneViewController *loginViewiPhone;
@property (nonatomic,strong) LoginiPadViewController *loginViewiPad;
@end

//
//  MyCourseiPhoneViewController.h
//  QuickLearning
//
//  Created by Roberto Salvador Olguín Lozano on 02/04/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QuickLearningService.h"
#import "MyCourseCellViewController.h"
#import "MyCourseContentViewController.h"
#import "MyCourseContent1ViewController.h"
#import "MyCourseContent2ViewController.h"
#import "MyCourseHisLisViewController.h"
#import "MyCourseHisGrafViewController.h"

@interface MyCourseiPhoneViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property(nonatomic, strong)IBOutlet UISegmentedControl *historial;

- (IBAction) presentHistorial: (id) sender;

@end

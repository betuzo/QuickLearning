//
//  MyCourseCellViewController.h
//  QuickLearning
//
//  Created by Roberto Salvador Olguín Lozano on 06/04/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCourseCellViewController : UITableViewCell

@property (nonatomic, retain) IBOutlet UILabel *name;

@property (nonatomic, retain) IBOutlet UILabel *total;

@property (nonatomic, retain) IBOutlet UILabel *totalCorrect;

@property (nonatomic, retain) IBOutlet UILabel *totalError;

@end

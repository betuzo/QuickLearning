//
//  MyCourseCellViewController.m
//  QuickLearning
//
//  Created by Roberto Salvador Olguín Lozano on 06/04/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import "MyCourseCellViewController.h"

@implementation MyCourseCellViewController

@synthesize name = _name;

@synthesize total = _total;

@synthesize totalCorrect = _totalCorrect;

@synthesize totalError = _totalError;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end

//
//  MyCourseContent2ViewController.h
//  QuickLearning
//
//  Created by Roberto Salvador Olguín Lozano on 06/04/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCourseContent2ViewController : UIViewController<UITextFieldDelegate>

@property(nonatomic, strong)IBOutlet UITextField *response1;
@property(nonatomic, strong)IBOutlet UITextField *response2;
@property(nonatomic, strong)IBOutlet UITextField *response3;
@property(nonatomic, strong)IBOutlet UITextField *response4;

-(IBAction)editingEnded:(id)sender;

@end

//
//  LoginiPhoneViewController.h
//  QuickLearning
//
//  Created by Roberto Salvador Olguín Lozano on 02/04/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeiPhoneViewController.h"

@interface LoginiPhoneViewController : UIViewController<UITextFieldDelegate>
{
	IBOutlet UIView *_contentView;
}

@property(nonatomic, strong)IBOutlet UITextField *idUser;

@property(nonatomic, strong)IBOutlet UITextField *passUser;


-(IBAction)presentHomeView:(id)sender;
-(IBAction)presentPageView:(id)sender;
- (void) moveToTopFields;
- (void) moveToTopOriginFields;

@end

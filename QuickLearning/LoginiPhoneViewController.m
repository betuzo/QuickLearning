//
//  LoginiPhoneViewController.m
//  QuickLearning
//
//  Created by Roberto Salvador Olguín Lozano on 02/04/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import "LoginiPhoneViewController.h"

@implementation LoginiPhoneViewController

@synthesize idUser = _idUser;

@synthesize passUser = _passUser;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    
    [_idUser setDelegate:self];
	[_passUser setDelegate:self];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void) moveToTopFields
{
	[UIView animateWithDuration:1.5
						  delay:0.05
						options: UIViewAnimationCurveEaseOut
					 animations:^{
						 
						 [_contentView setFrame:CGRectMake(65,120, _contentView.bounds.size.width, _contentView.bounds.size.height)];
						 
						 
						 
					 } 
					 completion:^(BOOL finished){
						 
					 }];
}

- (void) moveToTopOriginFields
{
	[UIView animateWithDuration:1.5
						  delay:0.05
						options: UIViewAnimationCurveEaseOut
					 animations:^{
						 
						 [_contentView setFrame:CGRectMake(65,180, _contentView.bounds.size.width,_contentView.bounds.size.height)];
						 
						 
						 
					 } 
					 completion:^(BOOL finished){
						 
					 }];
}

#pragma mark - View lifecycle
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
	[self moveToTopFields];
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
	if (textField == _idUser ) {
		
		[_passUser becomeFirstResponder];
		
	}
	else if (textField == _passUser){
		
		[_passUser resignFirstResponder];
		[self moveToTopOriginFields];
		
	}
	
	return NO;
}


-(IBAction)editingEnded:(id)sender
{
    [sender resignFirstResponder]; 
}

#pragma mark - Touches Handling

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
	
	[_idUser resignFirstResponder];
	[_passUser resignFirstResponder];
	[self moveToTopOriginFields];
	
    
}


-(IBAction)presentHomeView:(id)sender
{
    if (![[_passUser text] isEqual:@""]
        && ![[_idUser text] isEqual:@""])
    {
        HomeiPhoneViewController *homeViewController = [[HomeiPhoneViewController alloc] initWithNibName:@"HomeiPhoneViewController" bundle:nil];
        [self presentModalViewController:homeViewController animated:YES];
    }
    else
    {
        NSString *message = @"Id user and password, please";
        UIAlertView *usageAlertView = [[UIAlertView alloc] initWithTitle:@"Login" message:message delegate:self cancelButtonTitle:@"Acept" otherButtonTitles:nil];
        [usageAlertView show];   
    }
}

-(IBAction)presentPageView:(id)sender{
    
}

@end

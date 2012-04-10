//
//  MyCourseContent2ViewController.m
//  QuickLearning
//
//  Created by Roberto Salvador Olguín Lozano on 06/04/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import "MyCourseContent2ViewController.h"

@implementation MyCourseContent2ViewController

@synthesize response1 = _response1;
@synthesize response2 = _response2;
@synthesize response3 = _response3;
@synthesize response4 = _response4;

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
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
	if (textField == _response1 ) {
		
		[_response2 becomeFirstResponder];
		
	}
    else if (textField == _response2 ) {
		
		[_response3 becomeFirstResponder];
		
	}
    else if (textField == _response3 ) {
		
		[_response4 becomeFirstResponder];
		
	}
	else if (textField == _response4){
		
		[_response4 resignFirstResponder];	
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
    [_response1 resignFirstResponder];
	[_response2 resignFirstResponder];
	[_response3 resignFirstResponder];
	[_response4 resignFirstResponder];
}

@end

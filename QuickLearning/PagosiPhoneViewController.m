//
//  PagosiPhoneViewController.m
//  QuickLearning
//
//  Created by Roberto Salvador Olguín Lozano on 11/04/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import "PagosiPhoneViewController.h"

@implementation PagosiPhoneViewController

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

#pragma mark - table

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[QuickLearningService pagosUsuario] count] + 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    if (indexPath.row == 0)
    {
        cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
        cell.textLabel.text = @"Agregar Pago";
    }
    else
    {
        cell.accessoryType = UITableViewCellAccessoryNone;
        
        NSInteger _row = indexPath.row -1;
        
        cell.textLabel.text = [NSString stringWithFormat:@"%@ %@, nivel %@", [[[QuickLearningService pagosUsuario] objectAtIndex:_row] objectAtIndex:2], [[[QuickLearningService pagosUsuario] objectAtIndex:_row] objectAtIndex:6], [[[QuickLearningService pagosUsuario] objectAtIndex:_row] objectAtIndex:1]];
        
        cell.detailTextLabel.text = [NSString stringWithFormat:@"%@ de  %@ de %@", [[[QuickLearningService pagosUsuario] objectAtIndex:_row] objectAtIndex:4], [[[QuickLearningService pagosUsuario] objectAtIndex:_row] objectAtIndex:5], [[[QuickLearningService pagosUsuario] objectAtIndex:_row] objectAtIndex:3]];
    }
    
    return cell;
    
}

@end

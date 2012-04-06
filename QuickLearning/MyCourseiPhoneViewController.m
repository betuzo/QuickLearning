//
//  MyCourseiPhoneViewController.m
//  QuickLearning
//
//  Created by Roberto Salvador Olguín Lozano on 02/04/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import "MyCourseiPhoneViewController.h"

@implementation MyCourseiPhoneViewController

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

#pragma mark - UITable

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[QuickLearningService avanceAprendizaje] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
	
    MyCourseCellViewController *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
	
    if (cell == nil) {
		NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"MyCourseCellViewController" owner:self options:nil];
        cell = (MyCourseCellViewController *)[nib objectAtIndex:0];
    }
    
    cell.selectionStyle = UITableViewCellSelectionStyleGray;
    cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;    
    
    [[cell name] setText:[[[[QuickLearningService avanceAprendizaje] objectAtIndex:indexPath.row] allObjects] objectAtIndex:0]];
    [[cell total] setText:[[[[QuickLearningService avanceAprendizaje] objectAtIndex:indexPath.row] allObjects] objectAtIndex:1]];
    [[cell totalCorrect] setText:[[[[QuickLearningService avanceAprendizaje] objectAtIndex:indexPath.row] allObjects] objectAtIndex:2]];
    [[cell totalError] setText:[[[[QuickLearningService avanceAprendizaje] objectAtIndex:indexPath.row] allObjects] objectAtIndex:3]];

    return cell;
    
}

- (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath
{
    UIViewController *detailViewController = nil;
    
    switch (indexPath.row) {
        case 0:
            detailViewController = [[MyCourseContent2ViewController alloc] initWithNibName:@"MyCourseContent2ViewController" bundle:nil];
            break;
        case 1:
            detailViewController = [[MyCourseContentViewController alloc] initWithNibName:@"MyCourseContentViewController" bundle:nil];
            break;
        case 2:
            detailViewController = [[MyCourseContent1ViewController alloc] initWithNibName:@"MyCourseContent1ViewController" bundle:nil];
            break;
        default:
            break;
    }

    //Pass the selected object to the new view controller.
    [self.navigationController pushViewController:detailViewController animated:YES];
	
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"Avances";
}

@end

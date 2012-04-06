//
//  MyCourseContentViewController.m
//  QuickLearning
//
//  Created by Roberto Salvador Olguín Lozano on 06/04/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import "MyCourseContentViewController.h"

@implementation MyCourseContentViewController

@synthesize appSoundPlayer;
@synthesize playing;
@synthesize appSoundButton;

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
    [self initAudio];
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

- (void)initAudio
{
    NSString *soundFilePath = [[NSBundle mainBundle]	pathForResource:	@"sound"
                                                              ofType:				@"caf"];
    NSURL *soundFileURL = [[NSURL alloc] initFileURLWithPath: soundFilePath];
    
    self.appSoundPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL: soundFileURL error: nil];
	
	// "Preparing to play" attaches to the audio hardware and ensures that playback
	//		starts quickly when the user taps Play
	[appSoundPlayer prepareToPlay];
	[appSoundPlayer setVolume: 1.0];
	[appSoundPlayer setDelegate: self];
    
}

#pragma mark - Audio Delegate

- (IBAction) playAppSound: (id) sender {
    
	[appSoundPlayer play];
	playing = YES;
	[appSoundButton setEnabled: NO];
}

- (void) audioPlayerDidFinishPlaying: (AVAudioPlayer *) appSoundPlayer successfully: (BOOL) flag {
    
	playing = NO;
	[appSoundButton setEnabled: YES];
}

- (void) audioPlayerBeginInterruption: player {
    
	NSLog (@"Interrupted. The system has paused audio playback.");
	
	if (playing) {
        
		playing = NO;
	}
}

- (void) audioPlayerEndInterruption: player {
    
	NSLog (@"Interruption ended. Resuming audio playback.");
	
	// Reactivates the audio session, whether or not audio was playing
	//		when the interruption arrived.
	[[AVAudioSession sharedInstance] setActive: YES error: nil];
    
	[appSoundPlayer prepareToPlay];
	[appSoundPlayer play];
	playing = YES;
	
}


@end

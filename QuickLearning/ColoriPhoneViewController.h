//
//  ColoriPhoneViewController.h
//  QuickLearning
//
//  Created by Roberto Salvador Olguín Lozano on 02/04/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QuickLearningService.h"
#import <MediaPlayer/MediaPlayer.h>
#import <AVFoundation/AVFoundation.h>
#import <AudioToolbox/AudioToolbox.h> 

@interface ColoriPhoneViewController : UIViewController<AVAudioPlayerDelegate>
{
    AVAudioPlayer				*appSoundPlayer;
	BOOL						playing ;
    IBOutlet UIButton           *appSoundButton;
}

@property (nonatomic, retain)	AVAudioPlayer			*appSoundPlayer;
@property (nonatomic, retain)	IBOutlet UIButton		*appSoundButton;
@property (readwrite)			BOOL					playing;

- (void)initAudio;
- (IBAction) playAppSound: (id) sender;

@end

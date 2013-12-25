//
//  KiddingAppDelegate.h
//  Kiding me?
//
//  Created by Dimitri Vishnepolsky on 12/22/13.
//  Copyright (c) 2013 dImo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "View.h"
#import <AudioToolbox/AudioToolbox.h>	//needed for SystemSoundID

@interface KiddingAppDelegate : UIResponder <UIApplicationDelegate>
{
	View *view;
	SystemSoundID sid;
}

@property (strong, nonatomic) UIWindow *window;

@end

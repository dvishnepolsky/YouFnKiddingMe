//
//  View.m
//  Kiding me?
//
//  Created by Dimitri Vishnepolsky on 12/22/13.
//  Copyright (c) 2013 dImo. All rights reserved.
//

#import "View.h"

@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

- (void) drawRect: (CGRect) rect
{
	/*
	 Create the invisible square that will surround the circle.
	 Place the upper left corner of the square at the upper left corner of
	 the View.  bounds.origin.x and bounds.origin.y are the coordinates of
	 the upper left corner of the View.
     */
    
    
    // Initialization code
    self.backgroundColor = [UIColor orangeColor];
    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    //Center the button in the view.
    CGRect b = self.bounds;
    CGSize s = CGSizeMake(300, 300);	//size of button
    
    button.frame = CGRectMake(
                              b.origin.x + (b.size.width - s.width) / 2,
                              b.origin.y + (b.size.height - s.height) / 2,
                              s.width,
                              s.height
                              );
    
    [button setTitleColor: [UIColor whiteColor] forState: UIControlStateNormal];
    
    [button setTitle: @"Are you fn kidding me?" forState: UIControlStateNormal];
    
    [button addTarget: [UIApplication sharedApplication].delegate
               action: @selector(touchUpInside:)
     forControlEvents: UIControlEventTouchUpInside
     ];
    
    UIImage *buttonImage = [UIImage imageNamed:@"Button_unpressed.jpg"];
    [button setBackgroundImage:buttonImage forState:UIControlStateNormal];
    
    UIImage *pressedImage = [UIImage imageNamed:@"Button_depressed.jpg"];
    [button setBackgroundImage:pressedImage forState:UIControlStateHighlighted];
    
    [self addSubview: button];
}


@end

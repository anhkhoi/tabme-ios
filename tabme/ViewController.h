//
//  ViewController.h
//  tabme
//
//  Created by Khoi Tran on 4/13/14.
//  Copyright (c) 2014 Khoi Tran. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIAlertViewDelegate> {
    IBOutlet UILabel *scoreLabel;
    IBOutlet UILabel *timerLabel;
    
    NSInteger count;
    NSInteger seconds;
    NSTimer *timer;
}

- (IBAction)buttonPressed;

- (void)setupGame;

@end

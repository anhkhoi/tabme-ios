//
//  ViewController.m
//  tabme
//
//  Created by Khoi Tran on 4/13/14.
//  Copyright (c) 2014 Khoi Tran. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSLog(@"View Loaded");
    [self setupGame];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed {

//    scoreLabel.text = @"Pressed!";
    
    count++;

    NSLog(@"Counted: %@", [NSString stringWithFormat:@"Score\n%i", count]);
    
    scoreLabel.text = [NSString stringWithFormat:@"Score %i", count];
}

- (void)setupGame {
    seconds = 5;
    count = 0;
    
    timerLabel.text = [NSString stringWithFormat:@"Time: %i", seconds];
    scoreLabel.text = [NSString stringWithFormat:@"Score %i", count];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0f
                                             target: self
                                           selector: @selector(subtractTime)
                                           userInfo: nil
                                            repeats: YES];
}

- (void)subtractTime {
    seconds--;
    timerLabel.text = [NSString stringWithFormat:@"Time: %i", seconds];
    
    if (seconds == 0) {
        [timer invalidate];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Time is up!" message:[NSString stringWithFormat:@"Your score %i points", count] delegate:self cancelButtonTitle:@"Play again" otherButtonTitles:nil, nil];
        [alert show];
    }
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    [self setupGame];
}

@end

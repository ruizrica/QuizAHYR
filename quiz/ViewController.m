//
//  ViewController.m
//  quiz
//
//  Created by Ricardo Ruiz on 3/10/15.
//  Copyright (c) 2015 iOS Apps Development. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    int buttonTag;
}
@property (weak, nonatomic) IBOutlet UILabel *lb_message;
- (IBAction)buttonAction:(UIButton *)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
	
	self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"Lesson-1-Menu-Vector-Chalk-tray.png"]];	
}

- (BOOL)prefersStatusBarHidden {
	return YES;
}

- (IBAction)buttonAction:(UIButton *)sender {
	buttonTag = (int)sender.tag;
	[self checkAnswer];
}

- (void)loadQuestions {
    
}

- (void)checkAnswer {
    
    if (buttonTag == 4) {
        NSLog(@"Correct!");
		UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Andy" message:@"Great Job" delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles:nil];
		[alert show];
		
		_lb_message.text = @"Billy and Tim ran away from the big dog, run said Billy to Tim";
    } else {
		UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Andy" message:@"Try Again" delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles:nil];
		[alert show];
    }
}

@end

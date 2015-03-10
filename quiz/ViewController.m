//
//  ViewController.m
//  quiz
//
//  Created by Ricardo Ruiz on 3/10/15.
//  Copyright (c) 2015 iOS Apps Development. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    int *buttonTag;
}
- (IBAction)buttonAction:(UIButton *)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)buttonAction:(UIButton *)sender {
    buttonTag = (int)sender.tag;
    
}

- (void)loadQuestions {
    
}

- (void)checkAnswer {
    
    if (buttonTag == 1) {
        NSLog(@"Correct!");
    } else {
        NSLog(@"Try Again");
    }
}

@end

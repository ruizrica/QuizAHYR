//
//  menuTemplate.m
//  quiz
//
//  Created by Ricardo Ruiz on 3/12/15.
//  Copyright (c) 2015 iOS Apps Development. All rights reserved.
//

#import "menuTemplate.h"

@interface menuTemplate () {
	
	NSMutableArray *images0;
	NSMutableArray *images1;
	NSMutableArray *images2;
	NSMutableArray *logo;
}

@property (weak, nonatomic) IBOutlet UIImageView *imageView0;
@property (weak, nonatomic) IBOutlet UIImageView *imageView1;
@property (weak, nonatomic) IBOutlet UIImageView *imageView2;
@property (weak, nonatomic) IBOutlet UIImageView *imageViewLogo;
@end

@implementation menuTemplate

- (BOOL)prefersStatusBarHidden {
	return YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"Lesson-1-Menu-Vector-Chalk-tray.png"]];
}

- (void)viewWillAppear:(BOOL)animated {
	[self loadAnimations];
}

- (void)viewDidDisappear:(BOOL)animated {
	[self clearAnimations];
}

- (void)clearAnimations {
	images0 = nil;
	images1 = nil;
	images2 = nil;
	logo = nil;
}

- (void)loadAnimations {
	
	// Logo
	// - - - - - - - - - - - - - - - - - - - - - - - - - - - -

	// File Path
	NSString *logoPath = [[NSBundle mainBundle] pathForResource:@"andyFlyInR" ofType:@"txt"];
	// Load Array From File Path
	NSArray *logoArray = [[NSString stringWithContentsOfFile:logoPath usedEncoding:nil error:nil] componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]];
	// Load Array of Images
	logo = [[NSMutableArray alloc] init];
	for (NSString* name in logoArray) {
		[logo addObject:[UIImage imageNamed:name]];
	}
	
	// Word Practice
	// - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	
	// File Path
	NSString *wordPractice = [[NSBundle mainBundle] pathForResource:@"wordPractice" ofType:@"txt"];
	// Load Array From File Path
	NSArray *wordPracticeArray = [[NSString stringWithContentsOfFile:wordPractice usedEncoding:nil error:nil] componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]];
	// Load Array of Images
	images0 = [[NSMutableArray alloc] init];
	for (NSString* name in wordPracticeArray) {
		[images0 addObject:[UIImage imageNamed:name]];
	}
	
	// Flashing Practice
	// - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	/*
	// File Path
	NSString *flashingfilePath = [[NSBundle mainBundle] pathForResource:@"flashingPractice" ofType:@"txt"];
	// Load Array From File Path
	NSArray *imageArray1 = [[NSString stringWithContentsOfFile:flashingfilePath usedEncoding:nil error:nil] componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]];
	// Load Array of Images
	images1 = [[NSMutableArray alloc] init];
	for (NSString* name in imageArray1) {
		[images1 addObject:[UIImage imageNamed:name]];
	}
	*/
	// Reading Practice
	// - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	
	// File Path
	NSString *readingfilePath = [[NSBundle mainBundle] pathForResource:@"readingPractice" ofType:@"txt"];
	// Load Array From File Path
	NSArray *imageArray2 = [[NSString stringWithContentsOfFile:readingfilePath usedEncoding:nil error:nil] componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]];
	// Load Array of Images
	images2 = [[NSMutableArray alloc] init];
	for (NSString* name in imageArray2) {
		[images2 addObject:[UIImage imageNamed:name]];
	}

	// Load Animations
	// - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	
	// Word Practice
	_imageViewLogo.animationImages = logo;
	_imageViewLogo.animationDuration = 1.5;
	[_imageViewLogo startAnimating];
	// Word Practice
	_imageView0.animationImages = images0;
	_imageView0.animationDuration = 2.5;
	[_imageView0 startAnimating];
	// Flashing Practice
	_imageView1.animationImages = images0;
	_imageView1.animationDuration = 2.5;
	[_imageView1 startAnimating];
	// Reading Practice
	_imageView2.animationImages = images2;
	_imageView2.animationDuration = 1.0;
	[_imageView2 startAnimating];
}


@end

//
//  AAViewController.m
//  AAFramework
//
//  Created by 11486628 on 01/19/2022.
//  Copyright (c) 2022 11486628. All rights reserved.
//

#import "AAViewController.h"

#import "PlayView.h"




@interface AAViewController ()
@property (weak, nonatomic) IBOutlet PlayView *playView;

@end

@implementation AAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self.playView play:@"rtmp://ns8.indexforce.com/home/mystream"];
    [self.playView prepareToPlay];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  ACViewController.m
//  ACEasyiAdsLib
//
//  Created by Alok Choudhary on 07/19/2014.
//  Copyright (c) 2014 Alok Choudhary. All rights reserved.
//

#import "ACViewController.h"
#import <ACEasyAdsLib.h>

@interface ACViewController ()
@property (weak, nonatomic) IBOutlet UIView *testUIview;


@end

@implementation ACViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //programatically adding button
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"Show View" forState:UIControlStateNormal];
    button.frame = CGRectMake(80.0, 210.0, 160.0, 40.0);
    [self.view addSubview:button];

    //ads here
    ACEasyAdsLib *libAd = [[ACEasyAdsLib alloc] init];
    [libAd createAdInView:self.testUIview];
    
    //self.adViewOnVC.delegate = libAd;
    

    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

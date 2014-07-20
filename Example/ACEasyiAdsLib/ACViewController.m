//
//  ACViewController.m
//  ACEasyiAdsLib
//
//  Created by Alok Choudhary on 07/19/2014.
//  Copyright (c) 2014 Alok Choudhary. All rights reserved.
//

#import "ACViewController.h"
#import "ACEasyiAdsLib.h"
@interface ACViewController ()

@end

@implementation ACViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    ACEasyAdsLib *newAd = [[ACEasyAdsLib alloc] initWithUIView:_adContainer forAd:_adViewObject];
    
    [newAd showMeAd];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  ACEasyAdsLib.m
//  ACEasyAdsLib
//
//  Created by Alok on 7/18/14.
//  Copyright (c) 2014 Mapple Technologies. All rights reserved.
//

#import "ACEasyAdsLib.h"

@implementation ACEasyAdsLib


-(instancetype) initWithUIView:(UIView *)viewForAd forAd:(ADBannerView *)myAd
{
    self = [super init];
    if(self)
    {
        [self.uiViewForAd addSubview:myAd];
    }
    else
    {
        NSLog(@"An Error is occured");
    }
    return self;
    
}

-(void)showMeAd
{
    [self bannerViewDidLoadAd:self.myAd];
}

- (void)bannerViewDidLoadAd:(ADBannerView *)banner
{
    [UIView beginAnimations:nil context:nil];
    
    [UIView setAnimationDuration:1];
    
    [banner setAlpha:1];
    
    [UIView commitAnimations];
}

- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error
{
    [UIView beginAnimations:nil context:nil];
    
    [UIView setAnimationDuration:1];
    
    [banner setAlpha:0];
    
    [UIView commitAnimations];
}

@end

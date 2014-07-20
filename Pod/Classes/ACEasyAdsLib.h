//
//  ACEasyAdsLib.h
//  ACEasyAdsLib
//
//  Created by Alok on 7/18/14.
//  Copyright (c) 2014 Mapple Technologies. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <iAd/iAd.h>
#import <UIKit/UIKit.h>

@interface ACEasyAdsLib : NSObject <ADBannerViewDelegate>

@property (nonatomic, readonly) UIView *uiViewForAd;
@property (nonatomic, readonly) ADBannerView *myAd;

-(instancetype) initWithUIView:(UIView *)viewForAd forAd:(ADBannerView *)myAd;

-(void)showMeAd;

@end

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

@interface ACEasyAdsLib : UIView <ADBannerViewDelegate>

@property (nonatomic, readonly) UIView *uiViewForAd;
@property (nonatomic, strong) ADBannerView *myAd;

//-(instancetype) initWithUIView:(UIView *)viewForAd forAd:(ADBannerView *)myAd;

-(instancetype)initWithUIView:(UIView *)viewContainer;

//-(void)showMeAd;
-(void)setupAd;

-(void)showAd;

-(void)failedToLoadAd;

-(instancetype)initwithAdViewInVC:(ADBannerView *)adView;
-(void)setupPassedAdView;
-(void)showPassedAd;
-(void)errorLoadingInPassedAd;

-(void)createAdInView:(UIView *)containerView;

@end

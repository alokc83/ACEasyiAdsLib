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

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        
    }
    return self;
}

-(instancetype)initWithUIView:(UIView *)viewContainer
{
    self = [super init];
    if(self)
    {
        _uiViewForAd = viewContainer;
        
    }
    
    return self;
    
}

-(void)setupAd
{
    self.myAd = [[ADBannerView alloc] init];
    self.myAd.frame = CGRectMake(0, 0, _uiViewForAd.frame.size.width, _uiViewForAd.frame.size.height);
    self.myAd.delegate = self;
    
}

-(instancetype)initwithAdViewInVC:(ADBannerView *)adView
{
    self.myAd = adView;
    self.myAd.delegate = self;
    
    return self;
    
}

-(void)setupPassedAdView
{
    
}

-(void)showPassedAd
{
    [self bannerViewDidLoadAd:self.myAd];
}

-(void)errorLoadingInPassedAd
{
    
    NSError *libError = nil;
    [self bannerView:_myAd didFailToReceiveAdWithError:libError];
    NSLog(@"Error in loading ad. Error description : %@",libError);
}

-(void)showAd
{
    
    [self bannerViewDidLoadAd:_myAd];
    
}

-(void)failedToLoadAd
{
    NSError *libError = nil;
    [self bannerView:_myAd didFailToReceiveAdWithError:libError];
    NSLog(@"Error in loading ad. \nError description : %@",libError);
}

#pragma mark -
#pragma mark add creation
-(void)createAdInView:(UIView *)containerView
{
    //ADBannerView *adView = [[ADBannerView alloc] initWithFrame: ];
//    ADBannerView *adView = [[ADBannerView alloc] init];
//    adView.frame = CGRectMake(0, 0, 320, 50);

    ADBannerView *adView  = [[ADBannerView alloc] initWithFrame:CGRectMake(containerView.frame.origin.x,
                                                                           containerView.frame.origin.y,
                                                                           containerView.frame.size.width,
                                                                           containerView.frame.size.height)];
    adView.delegate = self;
    [containerView addSubview: adView];

}


#pragma mark -
#pragma mark AdView Delegate Methods
- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error{
    NSLog(@"ERROR in Loading iAds: \n'%@'", error);
   // banner.hidden = YES ;
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    [banner setAlpha:0];
    [UIView commitAnimations];
}

- (void)bannerViewActionDidFinish:(ADBannerView *)banner{NSLog(@"bannerview was selected");}

- (BOOL)bannerViewActionShouldBegin:(ADBannerView *)banner willLeaveApplication:(BOOL)willLeave
{
    //return willLeave;
    return YES; //as per ducumentation its good if its YES
}

//
- (void)bannerViewDidLoadAd:(ADBannerView *)banner {
    NSLog(@"banner was loaded");
    //banner.hidden = NO;
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    [banner setAlpha:1];
    [UIView commitAnimations];
}



@end

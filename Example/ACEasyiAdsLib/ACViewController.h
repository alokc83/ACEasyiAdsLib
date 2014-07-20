//
//  ACViewController.h
//  ACEasyiAdsLib
//
//  Created by Alok Choudhary on 07/19/2014.
//  Copyright (c) 2014 Alok Choudhary. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

@interface ACViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *adContainer;
@property (weak, nonatomic) IBOutlet ADBannerView *adViewObject;

@end

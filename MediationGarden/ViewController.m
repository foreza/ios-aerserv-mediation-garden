//
//  ViewController.m
//  MediationGarden
//
//  Created by Jason C on 7/24/19.
//  Copyright © 2019 Jason C. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self loadBannerAd];
}
    
    
- (void)loadBannerAd {
        self.asAdView = [ASAdView viewWithPlacementID:@"380000" andAdSize:ASBannerSize];
        self.asAdView.delegate = self;
        [self.view addSubview:self.asAdView];
        [self.asAdView loadAd];
}

    
- (void)adViewDidLoadAd:(ASAdView*)adView {
    
}
- (void)adViewDidPreloadAd:(ASAdView*)adView {
    
}
- (void)adViewDidFailToLoadAd:(ASAdView*)adView withError:(NSError*)error {
    
}
- (void)adWasClicked:(ASAdView*)adView {
    
}


@end

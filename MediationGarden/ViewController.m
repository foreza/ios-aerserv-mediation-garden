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
}
    
- (IBAction)loadAPSBanner:(id)sender {
    [self loadAPSBannerAd];
}

- (void)loadBannerAd {
        self.asAdView = [ASAdView viewWithPlacementID:@"380000" andAdSize:ASBannerSize];
        self.asAdView.delegate = self;
        [self.view addSubview:self.asAdView];
        [self.asAdView loadAd];
}


- (void) loadAPSBannerAd{
    DTBAdSize *bannerSize = [[DTBAdSize alloc] initBannerAdSizeWithWidth:320 height:50 andSlotUUID:kAPSBanner320X50SlotId];
    self.adLoader = [DTBAdLoader new];
    [self.adLoader setSizes:bannerSize, nil];
    [self.adLoader loadAd:self];
}


#pragma mark - InMobi / AerServ Ad Callbacks


    
- (void)adViewDidLoadAd:(ASAdView*)adView {
    
}
- (void)adViewDidPreloadAd:(ASAdView*)adView {
    
}
- (void)adViewDidFailToLoadAd:(ASAdView*)adView withError:(NSError*)error {
    
}
- (void)adWasClicked:(ASAdView*)adView {
    
}




#pragma mark - APS Ad Callbacks

- (void)onFailure:(DTBAdError)error {
    
    NSLog(@"APS Ad call back returned error, %d", error );
    
    // Load the ad without the ad response as we have an error
    self.asAdView = [ASAdView viewWithPlacementID:kAPS320x50PLC andAdSize:ASBannerSize];
    self.asAdView.delegate = self;
    [self.asAdView loadAd];
    [self.view addSubview:self.asAdView];
    
    
}

- (void)onSuccess:(DTBAdResponse *)adResponse {
    
    // Load the ad with the ad response
    self.asAdView = [ASAdView viewWithPlacementID:kAPS320x50PLC andAdSize:ASBannerSize];
    self.asAdView.delegate = self;
    [self.asAdView setDtbAdResponses:@[adResponse]];
    [self.asAdView loadAd];
    [self.view addSubview:self.asAdView];

}


@end

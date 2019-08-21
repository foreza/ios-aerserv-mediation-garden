//
//  ViewController.h
//  MediationGarden
//
//  Created by Jason C on 7/24/19.
//  Copyright © 2019 Jason C. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <InMobiSDK/InMobiSDK.h>
#import <DTBiOSSDK/DTBiOSSDK.h>
#import "Constants.h"

@interface ViewController : UIViewController <ASAdViewDelegate, DTBAdCallback>

    
    @property(nonatomic, strong) ASAdView* asAdView;


    @property (nonatomic, strong) DTBAdLoader *adLoader;        // For loading APS ads




@end


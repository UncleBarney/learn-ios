//
//  TipsUtility.m
//  Tipster
//
//  Created by Hechen Gao on 7/24/20.
//  Copyright © 2020 codepath. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TipsUtility.h"

static NSString *const kTipsTulity = @"default_tip_percentage";

@implementation TipsUtility

+ (int)defaultTipPercentage {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSNumber *percentage = [defaults objectForKey:kTipsTulity];
    if (!percentage) {
        return 0;
    }
    return [percentage intValue];
}

+ (void)setDefaultTipPercentage:(int)percentage {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:percentage forKey:kTipsTulity];
    [defaults synchronize];
}

@end

//
//  UIStepper+HHThemeKit.m
//  HHThemeKit
//
//  Created by caohuihui on 2017/5/10.
//  Copyright © 2017年 caohuihi. All rights reserved.
//

#import "UIStepper+HHThemeKit.h"

@implementation UIStepper (HHThemeKit)

- (void)hh_setBackgroundImage:(NSString *)imageKey forState:(UIControlState)state{
    [self hh_settingWithKey:imageKey type:HHThemeUnitValueType_Img action:@selector(setBackgroundImage:forState:) state:state];
}

- (void)hh_setDividerImage:(NSString*)imageKey forLeftSegmentState:(UIControlState)leftState rightSegmentState:(UIControlState)rightState{
    [self hh_settingWithKey:imageKey type:HHThemeUnitValueType_Img action:@selector(setDividerImage:forLeftSegmentState:rightSegmentState:) state:leftState barMetrics:rightState];
}

- (void)hh_setIncrementImage:(NSString *)imageKey forState:(UIControlState)state{
    [self hh_settingWithKey:imageKey type:HHThemeUnitValueType_Img action:@selector(setIncrementImage:forState:) state:state];
}

- (void)hh_setDecrementImage:(NSString *)imageKey forState:(UIControlState)state{
    [self hh_settingWithKey:imageKey type:HHThemeUnitValueType_Img action:@selector(setDecrementImage:forState:) state:state];
}

@end

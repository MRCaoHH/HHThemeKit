//
//  UISlider+HHThemeKit.m
//  HHThemeKit
//
//  Created by caohuihui on 16/7/27.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import "UISlider+HHThemeKit.h"

@implementation UISlider (HHThemeKit)

- (void)hh_setMaximumValueImage:(NSString *)maximumValueImageKey{
    [self hh_settingWithKey:maximumValueImageKey type:HHThemeUnitValueType_Img action:@selector(setMaximumValueImage:)];
}

- (void)hh_setMinimumValueImage:(NSString *)minimumValueImageKey{
    [self hh_settingWithKey:minimumValueImageKey type:HHThemeUnitValueType_Img action:@selector(setMinimumValueImage:)];
}

- (void)hh_setThumbImage:(NSString *)imageKey forState:(UIControlState)state{
    [self hh_settingWithKey:imageKey type:HHThemeUnitValueType_Img action:@selector(setThumbImage:forState:) state:state];
}

- (void)hh_setMinimumTrackImage:(NSString *)imageKey forState:(UIControlState)state{
    [self hh_settingWithKey:imageKey type:HHThemeUnitValueType_Img action:@selector(setMinimumTrackImage:forState:) state:state];
}

- (void)hh_setMaximumTrackImage:(NSString *)imageKey forState:(UIControlState)state{
    [self hh_settingWithKey:imageKey type:HHThemeUnitValueType_Img action:@selector(setMaximumTrackImage:forState:) state:state];
}

- (void)hh_setMinimumTrackTintColor:(NSString *)minimumTrackTintColorKey{
    [self hh_settingWithKey:minimumTrackTintColorKey type:HHThemeUnitValueType_Color action:@selector(setMinimumTrackTintColor:)];
}

- (void)hh_setMaximumTrackTintColor:(NSString *)maximumTrackTintColorKey{
    [self hh_settingWithKey:maximumTrackTintColorKey type:HHThemeUnitValueType_Color action:@selector(setMinimumTrackTintColor:)];
}
@end

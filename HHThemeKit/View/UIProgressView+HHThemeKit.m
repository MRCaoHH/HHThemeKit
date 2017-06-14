//
//  UIProgressView+HHThemeKit.m
//  HHThemeKit
//
//  Created by caohuihui on 16/7/27.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import "UIProgressView+HHThemeKit.h"

@implementation UIProgressView (HHThemeKit)

- (void)hh_setProgressImage:(NSString *)progressImageKey{
    [self hh_settingWithKey:progressImageKey type:HHThemeUnitValueType_Img action:@selector(setProgressImage:)];
}

- (void)hh_setTrackImage:(NSString *)trackImageImg{
    [self hh_settingWithKey:trackImageImg type:HHThemeUnitValueType_Img action:@selector(setTrackImage:)];
}

- (void)hh_setTrackTintColor:(NSString *)trackTintColorKey{
    [self hh_settingWithKey:trackTintColorKey type:HHThemeUnitValueType_Color action:@selector(setTrackTintColor:)];
}

- (void)hh_setProgressTintColor:(NSString *)progressTintColorKey{
    [self hh_settingWithKey:progressTintColorKey type:HHThemeUnitValueType_Color action:@selector(setProgressTintColor:)];
}

@end

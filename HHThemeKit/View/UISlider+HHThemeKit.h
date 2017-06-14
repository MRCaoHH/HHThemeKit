//
//  UISlider+HHThemeKit.h
//  HHThemeKit
//
//  Created by caohuihui on 16/7/27.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UISlider (HHThemeKit)
- (void)hh_setMaximumValueImage:(NSString *)maximumValueImageKey;
- (void)hh_setMinimumValueImage:(NSString *)minimumValueImageKey;
- (void)hh_setThumbImage:(NSString *)imageKey forState:(UIControlState)state;
- (void)hh_setMinimumTrackImage:(NSString *)imageKey forState:(UIControlState)state;
- (void)hh_setMaximumTrackImage:(NSString *)imageKey forState:(UIControlState)state;
- (void)hh_setMinimumTrackTintColor:(NSString *)minimumTrackTintColorKey;
- (void)hh_setMaximumTrackTintColor:(NSString *)maximumTrackTintColorKey;
@end

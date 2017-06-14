//
//  UIProgressView+HHThemeKit.h
//  HHThemeKit
//
//  Created by caohuihui on 16/7/27.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIProgressView (HHThemeKit)

- (void)hh_setProgressImage:(NSString *)progressImageKey;

- (void)hh_setTrackImage:(NSString *)trackImageImg;

- (void)hh_setTrackTintColor:(NSString *)trackTintColorKey;

- (void)hh_setProgressTintColor:(NSString *)progressTintColorKey;

@end

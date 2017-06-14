//
//  UIPageControl+HHThemeKit.m
//  HHThemeKit
//
//  Created by caohuihui on 16/7/27.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import "UIPageControl+HHThemeKit.h"

@implementation UIPageControl (HHThemeKit)

- (void)hh_setPageIndicatorTintColor:(NSString *)pageIndicatorTintColorKey{
    [self hh_settingWithKey:pageIndicatorTintColorKey type:HHThemeUnitValueType_Color action:@selector(setPageIndicatorTintColor:)];
}

- (void)hh_setCurrentPageIndicatorTintColor:(NSString *)currentPageIndicatorTintColorKey{
    [self hh_settingWithKey:currentPageIndicatorTintColorKey type:HHThemeUnitValueType_Color action:@selector(setCurrentPageIndicatorTintColor:)];
}

@end

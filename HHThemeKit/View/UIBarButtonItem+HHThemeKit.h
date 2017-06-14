//
//  UIBarButtonItem+HHThemeKit.h
//  HHThemeKit
//
//  Created by caohuihui on 16/7/27.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (HHThemeKit)

- (void)hh_setBackgroundImage:(NSString *)backgroundImageKey forState:(UIControlState)state barMetrics:(UIBarMetrics)barMetrics;

- (void)hh_setBackgroundImage:(NSString *)backgroundImageKey forState:(UIControlState)state style:(UIBarButtonItemStyle)style barMetrics:(UIBarMetrics)barMetrics;

- (void)hh_setBackButtonBackgroundImage:(NSString *)backgroundImageKey forState:(UIControlState)state barMetrics:(UIBarMetrics)barMetrics;

@end

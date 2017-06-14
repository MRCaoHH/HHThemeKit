//
//  UINavigationBar+HHThemeKit.h
//  HHThemeKit
//
//  Created by caohuihui on 16/7/27.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationBar (HHThemeKit)

- (void)hh_setShadowImage:(NSString *)shadowImageKey;

- (void)hh_setBackgroundImage:(NSString *)backgroundImageKey forBarMetrics:(UIBarMetrics)barMetrics;

- (void)hh_setBackgroundImage:(NSString *)backgroundImageKey forBarPosition:(UIBarPosition)barPosition barMetrics:(UIBarMetrics)barMetrics;

@end

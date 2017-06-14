//
//  UITabBar+HHThemeKit.h
//  HHThemeKit
//
//  Created by caohuihui on 16/7/27.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITabBar (HHThemeKit)

- (void)hh_setBarTintColor:(NSString *)barTintColor;
- (void)hh_setShadowImage:(NSString *)shadowImage;
- (void)hh_setBackgroundImage:(NSString *)backgroundImage;
- (void)hh_setSelectionIndicatorImage:(NSString *)selectionIndicatorImage;

@end

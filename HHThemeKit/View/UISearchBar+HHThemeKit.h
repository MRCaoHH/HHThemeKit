//
//  UISearchBar+HHThemeKit.h
//  HHThemeKit
//
//  Created by caohuihui on 16/7/27.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UISearchBar (HHThemeKit)

- (void)hh_setBarTintColor:(NSString *)barTintColorKey;

- (void)hh_setBackgroundImage:(NSString *)backgroundImageKey;

- (void)hh_setScopeBarBackgroundImage:(NSString *)scopeBarBackgroundImageKey;

- (void)hh_setScopeBarButtonBackgroundImage:(NSString *)backgroundImageKey forState:(UIControlState)state;

@end

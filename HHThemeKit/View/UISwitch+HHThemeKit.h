//
//  UISwitch+HHThemeKit.h
//  HHThemeKit
//
//  Created by caohuihui on 16/7/27.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UISwitch (HHThemeKit)

- (void)hh_setOnImage:(NSString *)onImageKey;
- (void)hh_setOffImage:(NSString *)offImageKey;

- (void)hh_setOnTintColor:(NSString *)onTintColorKey;
- (void)hh_setThumbTintColor:(NSString *)thumbTintColorKey;
- (void)hh_setTintColor:(NSString *)tintColorKey;

@end

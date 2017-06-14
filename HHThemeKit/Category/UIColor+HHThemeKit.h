//
//  UIColor+HHThemeKit.h
//  HHThemeKit
//
//  Created by caohuihui on 16/7/21.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (HHThemeKit)

/**
 * @brief 根据色值得到颜色
 * @param hex 16进制的色值
 **/
+(UIColor *)hh_colorWithHex:(int)hex;

/**
 * @brief 根据色值得到颜色
 * @param hexString 16进制色值
 **/
+(UIColor *)hh_colorWithHexString:(NSString *)hexString;

/**
 * @brief 根据色值得到颜色
 * @param hexString 16进制色值
 * @param alpha     透明值
 **/

+(UIColor *)hh_colorWithHexString:(NSString *)hexString alpha:(CGFloat)alpha;

@end

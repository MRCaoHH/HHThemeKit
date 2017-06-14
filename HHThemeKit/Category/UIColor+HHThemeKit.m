//
//  UIColor+HHThemeKit.m
//  HHThemeKit
//
//  Created by caohuihui on 16/7/21.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import "UIColor+HHThemeKit.h"

@implementation UIColor (HHThemeKit)

+(UIColor *)hh_colorWithHex:(int)hex
{
    return [UIColor colorWithRed:((float)((hex & 0xFF0000) >> 16))/255.0 green:((float)((hex & 0xFF00) >> 8))/255.0 blue:((float)(hex & 0xFF))/255.0 alpha:1.0];
}

+(UIColor *)hh_colorWithHexString:(NSString *)hexString
{
    return [self hh_getColorWithHexString:hexString alpha:1.0];
}

+(UIColor *)hh_colorWithHexString:(NSString *)hexString alpha:(CGFloat)alpha
{
    return [self hh_getColorWithHexString:hexString alpha:alpha];
}

+ (UIColor *)hh_getColorWithHexString:(NSString *)hexString alpha:(CGFloat)alpha
{
    float red ,blue,green;
    NSMutableString * colorString = [hexString mutableCopy];
    if ([colorString hasPrefix:@"0x"]||[colorString hasPrefix:@"0X"]) {
        [colorString replaceCharactersInRange:NSMakeRange(0, 2) withString:@""];
    }
    
    if ([colorString hasPrefix:@"#"]) {
        [colorString replaceCharactersInRange:NSMakeRange(0, 1) withString:@""];
    }
    
    if ([colorString length]>=2) {
        NSString * oneString  = [colorString substringWithRange:NSMakeRange(0, 1)];
        NSString * towString  = [colorString substringWithRange:NSMakeRange(1, 1)];
        red =  [self hexString:oneString]*16+ [self hexString:towString];
    }
    else
    {
        red = 0;
    }
    
    
    if ([colorString length]>=4) {
        NSString * oneString  = [colorString substringWithRange:NSMakeRange(2, 1)];
        NSString * towString  = [colorString substringWithRange:NSMakeRange(3, 1)];
        green =  [self hexString:oneString]*16+ [self hexString:towString];
    }
    else
    {
        green = 0;
    }
    
    if ([colorString length]>=6) {
        NSString * oneString  = [colorString substringWithRange:NSMakeRange(4, 1)];
        NSString * towString  = [colorString substringWithRange:NSMakeRange(5, 1)];
        blue =  [self hexString:oneString]*16+ [self hexString:towString];
    }
    else
    {
        blue = 0;
    }
    
    
    return [UIColor colorWithRed:red/255 green:green/255 blue:blue/255 alpha:alpha];
}

+(int)hexString:(NSString *)charString
{
    if ([charString isEqualToString:@"0"]) {
        return 0;
    }
    if ([charString isEqualToString:@"1"]) {
        return 1;
    }
    if ([charString isEqualToString:@"2"]) {
        return 2;
    }
    if ([charString isEqualToString:@"3"]) {
        return 3;
    }
    if ([charString isEqualToString:@"4"]) {
        return 4;
    }
    if ([charString isEqualToString:@"5"]) {
        return 5;
    }
    if ([charString isEqualToString:@"6"]) {
        return 6;
    }
    if ([charString isEqualToString:@"7"]) {
        return 7;
    }
    if ([charString isEqualToString:@"8"]) {
        return 8;
    }
    if ([charString isEqualToString:@"9"]) {
        return 9;
    }
    
    if ([charString isEqualToString:@"a"] ||[charString isEqualToString:@"A"]) {
        return 10;
    }
    if ([charString isEqualToString:@"b"]||[charString isEqualToString:@"B"]) {
        return 11;
    }
    if ([charString isEqualToString:@"c"]||[charString isEqualToString:@"C"]) {
        return 12;
    }
    if ([charString isEqualToString:@"d"]||[charString isEqualToString:@"D"]) {
        return 13;
    }
    if ([charString isEqualToString:@"e"]||[charString isEqualToString:@"E"]) {
        return 14;
    }
    
    if ([charString isEqualToString:@"f"]||[charString isEqualToString:@"F"]) {
        return 15;
    }
    return 0;
}

@end

//
//  HHThemeManager.m
//  HHThemeKit
//
//  Created by caohuihui on 16/7/27.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import "HHThemeManager.h"

@implementation HHThemeManager
+ (HHThemeManager *)manager{
    static HHThemeManager *_manager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _manager = [[HHThemeManager alloc]init];
    });
    return _manager;
}

- (BOOL)loadThemeWithFileName:(NSString *)fileName{
    NSString *path = [[NSBundle mainBundle]pathForResource:fileName ofType:@"plist"];
    return  [self loadThemeWithFilePath:path];
}

- (BOOL)loadThemeWithFilePath:(NSString *)filePath{
    NSFileManager *fileNamager = [[NSFileManager alloc]init];
    if ([fileNamager fileExistsAtPath:filePath]) {
        _filePath = filePath;
        NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:filePath];
        if ([dic isKindOfClass:[NSDictionary class]]) {
            _themeDic = dic;
            [[NSNotificationCenter defaultCenter]postNotificationName:HHUpdateThemeNoticeKey object:nil];
            return YES;
        }
    }
    return  NO;
}

- (UIColor *)colorWithKey:(NSString *)key{
    NSString *value = [self valueWithKey:key];
    if ([value isKindOfClass:[NSString class]] && value != nil) {
        UIColor *color = [UIColor hh_colorWithHexString:value];
        return color;
    }
    
#ifndef __OPTIMIZE__
    
    if( value ){
        NSLog(@"%@:不是字符串",key);
    }
    
#endif
    return nil;
}

- (CGColorRef)colorRefWithKey:(NSString *)key{
    UIColor *color = [self colorWithKey:key];
    return [color CGColor];
}

- (UIImage *)imgWithKey:(NSString *)key{
    NSString *value = [self valueWithKey:key];
    if ([value isKindOfClass:[NSString class]] && value != nil) {
        UIImage *img = [UIImage imageNamed:value];
        return img;
    }
    
#ifndef __OPTIMIZE__
    
    if( value ){
        NSLog(@"%@:不是字符串",key);
    }
    
#endif
    return nil;
}

- (UIFont *)fontWithKey:(NSString *)key{
    id value = [self valueWithKey:key];
    if ([value isKindOfClass:[NSDictionary class]] && value != nil){
        NSString *fontName = value[@"FontName"];
        NSString *fontSize = value[@"FontSize"];
        if ([fontName isKindOfClass:[NSString class]]&&[fontSize isKindOfClass:[NSString class]]) {
            UIFont *font = [UIFont fontWithName:fontName size:fontSize.floatValue];
            return font;
        }
    }
    
    if ([value isKindOfClass:[NSString class]] && value != nil){
        return [UIFont systemFontOfSize:((NSString *)value).integerValue];
    }
    
#ifndef __OPTIMIZE__
    
    if( value ){
        NSLog(@"%@:不是字典和字符串",key);
    }
    
#endif
    
    return nil;
}

- (id)valueWithKey:(NSString *)key{
    NSArray *keyArr = [key componentsSeparatedByString:@"."];
    if ([keyArr count] == 0) return nil;
    
    id value = _themeDic;
    for (int i = 0; i < [keyArr count]; i++) {
        NSString *akey = keyArr[i];
        if ([value isKindOfClass:[NSDictionary class]]) {
            value = value[akey];
        }else{
            NSLog(@"%@:不存在",key);
            return nil;
        }
    }
    return value;
}
@end

//
//  HHThemeUnitModel.m
//  HHThemeKit
//
//  Created by caohuihui on 16/7/21.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import "HHThemeUnitModel.h"
#import <UIKit/UIKit.h>
#import <objc/message.h>

typedef NS_ENUM(NSInteger, HHThemeUnitParamType) {
    HHThemeUnitParamType_None = 0, //key
    HHThemeUnitParamType_oneParam = 1, //key oneParam
    HHThemeUnitParamType_towParam = 2, //key oneParam towParam
    HHThemeUnitParamType_threeParam = 3, //key oneParam towParam threeParam
};

@interface HHThemeUnitModel ()
{
    HHThemeUnitParamType _paramType;
}
@end

@implementation HHThemeUnitModel

- (instancetype)initWithKey:(NSString *)key action:(SEL)action type:(HHThemeUnitValueType)type{
    self = [super init];
    if (self) {
        _key = key;
        _action = action;
        _type = type;
        _paramType = HHThemeUnitParamType_None;
    }
    return self;
}

- (instancetype)initWithKey:(NSString *)key action:(SEL)action type:(HHThemeUnitValueType)type oneParam:(NSInteger)oneParam{
    self = [self initWithKey:key action:action type:type];
    if (self) {
        _oneParam = oneParam;
        _paramType = HHThemeUnitParamType_oneParam;
    }
    return self;
}

- (instancetype)initWithKey:(NSString *)key action:(SEL)action type:(HHThemeUnitValueType)type oneParam:(NSInteger)oneParam towParam:(NSInteger)towParam{
    self = [self initWithKey:key action:action type:type oneParam:oneParam];
    if (self) {
        _towParam = towParam;
        _paramType = HHThemeUnitParamType_towParam;
    }
    return self;
}

- (instancetype)initWithKey:(NSString *)key action:(SEL)action type:(HHThemeUnitValueType)type oneParam:(NSInteger)oneParam towParam:(NSInteger)towParam threeParam:(NSInteger)threeParam{
    self = [self initWithKey:key action:action type:type oneParam:oneParam towParam:towParam];
    if (self) {
        _threeParam = threeParam;
        _paramType = HHThemeUnitParamType_threeParam;
    }
    return self;
}

- (void)sendMsg:(id)target{
    [UIView animateWithDuration:0.2 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        switch (_paramType) {
            case HHThemeUnitParamType_None:
                [self sendMsg_None:target];
                break;
            case HHThemeUnitParamType_oneParam:
                [self sendMsg_oneParam:target];
                break;
            case HHThemeUnitParamType_towParam:
                [self sendMsg_towParam:target];
                break;
            case HHThemeUnitParamType_threeParam:
                [self sendMsg_threeParam:target];
                break;
            default:
                break;
        }
    } completion:^(BOOL finished) {
        
    }];
    
}


- (void)sendMsg_None:(id)target{
    HHThemeManager *manager = [HHThemeManager manager];
    switch (_type) {
        case HHThemeUnitValueType_Color:
        {
            UIColor *color = [manager colorWithKey:_key];
            ((void(*)(id,SEL,id, ...))objc_msgSend)(target, _action, color);
        }
            break;
        case HHThemeUnitValueType_Img:
        {
            UIImage *img = [manager imgWithKey:_key];
            ((void(*)(id,SEL,id, ...))objc_msgSend)(target, _action, img);
        }
            break;
        case HHThemeUnitValueType_Font:
        {
            UIFont *font = [manager fontWithKey:_key];
            ((void(*)(id,SEL,id, ...))objc_msgSend)(target, _action, font);
        }
            break;
        case HHThemeUnitValueType_ColorRef:
        {
            CGColorRef color = [manager colorRefWithKey:_key];
            ((void(*)(id,SEL,CGColorRef,...))objc_msgSend)(target, _action, color);
        }
            break;
        default:
            break;
    }
}

- (void)sendMsg_oneParam:(id)target{
    HHThemeManager *manager = [HHThemeManager manager];
    switch (_type) {
        case HHThemeUnitValueType_Color:
        {
            UIColor *color = [manager colorWithKey:_key];
            ((void(*)(id,SEL, id,NSInteger,...))objc_msgSend)(target, _action, color, _oneParam);
        }
            break;
        case HHThemeUnitValueType_Img:
        {
            UIImage *img = [manager imgWithKey:_key];
            ((void(*)(id,SEL, id,NSInteger, ...))objc_msgSend)(target, _action, img, _oneParam);
        }
            break;
        case HHThemeUnitValueType_Font:
        {
            UIFont *font = [manager fontWithKey:_key];
            ((void(*)(id,SEL, id,NSInteger, ...))objc_msgSend)(target, _action, font, _oneParam);
        }
            break;
        default:
            break;
    }
}


- (void)sendMsg_towParam:(id)target{
    HHThemeManager *manager = [HHThemeManager manager];
    switch (_type) {
        case HHThemeUnitValueType_Color:
        {
            UIColor *color = [manager colorWithKey:_key];
            ((void(*)(id,SEL,id,NSInteger,NSInteger, ...))objc_msgSend)(target, _action, color, _oneParam, _towParam);
        }
            break;
        case HHThemeUnitValueType_Img:
        {
            UIImage *img = [manager imgWithKey:_key];
            ((void(*)(id,SEL,id,NSInteger,NSInteger, ...))objc_msgSend)(target, _action, img, _oneParam, _towParam);
        }
            break;
        case HHThemeUnitValueType_Font:
        {
            UIFont *font = [manager fontWithKey:_key];
            ((void(*)(id,SEL,id,NSInteger,NSInteger, ...))objc_msgSend)(target, _action, font, _oneParam, _towParam);
        }
            break;
        default:
            break;
    }
}


- (void)sendMsg_threeParam:(id)target{
    HHThemeManager *manager = [HHThemeManager manager];
    switch (_type) {
        case HHThemeUnitValueType_Color:
        {
            UIColor *color = [manager colorWithKey:_key];
            ((void(*)(id,SEL,id,NSInteger,NSInteger,NSInteger, ...))objc_msgSend)(target, _action, color, _oneParam, _threeParam, _towParam);
        }
            break;
        case HHThemeUnitValueType_Img:
        {
            UIImage *img = [manager imgWithKey:_key];
            ((void(*)(id,SEL,id,NSInteger,NSInteger,NSInteger, ...))objc_msgSend)(target, _action, img, _oneParam, _threeParam, _towParam);
        }
            break;
        case HHThemeUnitValueType_Font:
        {
            UIFont *font = [manager fontWithKey:_key];
            ((void(*)(id,SEL,id,NSInteger,NSInteger,NSInteger, ...))objc_msgSend)(target, _action, font, _oneParam, _threeParam, _towParam);
        }
            break;
        default:
            break;
    }
}

@end

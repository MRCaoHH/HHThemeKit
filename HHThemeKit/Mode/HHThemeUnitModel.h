//
//  HHThemeUnitModel.h
//  HHThemeKit
//
//  Created by caohuihui on 16/7/21.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger,HHThemeUnitValueType) {
    HHThemeUnitValueType_Color = 0,//颜色
    HHThemeUnitValueType_Img = 1,//图片
    HHThemeUnitValueType_Font = 2,//文字
    HHThemeUnitValueType_ColorRef = 3,//颜色空间
};


@interface HHThemeUnitModel : NSObject

/**
 原本的方法，例如setBackgroundColor:
 */
@property (nonatomic, assign, readonly) SEL action;

/**
 主题文件里面对应的健
 */
@property (nonatomic, strong, readonly) NSString *key;

/**
 值类型
 */
@property (nonatomic, assign, readonly) HHThemeUnitValueType type;

/**
 第一个参数
 */
@property (nonatomic, assign, readonly) NSInteger oneParam;

/**
 第二个参数
 */
@property (nonatomic, assign, readonly) NSInteger towParam;

/**
 第三个参数
 */
@property (nonatomic, assign, readonly) NSInteger threeParam;


/**
 初始化

 @param key 配置文件对应的健值
 @param action 原本方法
 @param type 值类型
 @return HHThemeUnitModel返回实例
 */
- (instancetype)initWithKey:(NSString *)key action:(SEL)action type:(HHThemeUnitValueType)type;

/**
 初始化
 
 @param key 配置文件对应的健值
 @param action 原本方法
 @param type 值类型
 @param oneParam 第一个参数
 @return HHThemeUnitModel返回实例
 */
- (instancetype)initWithKey:(NSString *)key action:(SEL)action type:(HHThemeUnitValueType)type oneParam:(NSInteger)oneParam;

/**
 初始化
 
 @param key 配置文件对应的健值
 @param action 原本方法
 @param type 值类型
 @param oneParam 第一个参数
 @param towParam 第二个参数
 @return HHThemeUnitModel返回实例
 */
- (instancetype)initWithKey:(NSString *)key action:(SEL)action type:(HHThemeUnitValueType)type oneParam:(NSInteger)oneParam towParam:(NSInteger)towParam;

/**
 初始化
 
 @param key 配置文件对应的健值
 @param action 原本方法
 @param type 值类型
 @param oneParam 第一个参数
 @param towParam 第二个参数
 @param threeParam 第三个参数
 @return HHThemeUnitModel返回实例
 */
- (instancetype)initWithKey:(NSString *)key action:(SEL)action type:(HHThemeUnitValueType)type oneParam:(NSInteger)oneParam towParam:(NSInteger)towParam threeParam:(NSInteger)threeParam;


/**
 发送信息

 @param target action方法
 */
- (void)sendMsg:(id)target;

@end

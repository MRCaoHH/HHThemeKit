//
//  NSObject+HHThemeKit.h
//  HHThemeKit
//
//  Created by caohuihui on 16/7/21.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import <Foundation/Foundation.h>
@class HHNoticeManager;

@interface NSObject (HHThemeKit)

/**
 主题模型字典
 */
@property (nonatomic, strong) NSMutableDictionary <NSString*,HHThemeUnitModel*> *hh_Theme;


/**
 通知管理
 */
@property (nonatomic, strong) HHNoticeManager *hh_noticeManager;


/**
 清除主题
 */
-(void)hh_clearTheme;


/**
 添加主题单元

 @param key 键
 @param value 主题单元
 */
-(void)hh_addThemeUnit:(NSString *)key value:(HHThemeUnitModel *)value;


/**
 根据键值移除主题单元

 @param key 键
 */
-(void)hh_removeThemeUnit:(NSString *)key;


/**
 根据键值设置主题

 @param key 键值
 @param type 值类型
 @param action 活动方法
 */
- (void)hh_settingWithKey:(NSString *)key type:(HHThemeUnitValueType)type action:(SEL)action;


/**
 根据键值设置主题

 @param key 键值
 @param type 值类型
 @param action 活动方法
 @param state 第一个参数，一般是state
 */
- (void)hh_settingWithKey:(NSString *)key type:(HHThemeUnitValueType)type action:(SEL)action state:(NSInteger)state;

/**
 根据键值设置主题
 
 @param key 键值
 @param type 值类型
 @param action 活动方法
 @param barMetrics 第一个参数,一般是state 这里只是为了提供多样性接口
 */
- (void)hh_settingWithKey:(NSString *)key type:(HHThemeUnitValueType)type action:(SEL)action barMetrics:(NSInteger)barMetrics;


/**
 根据键值设置主题
 
 @param key 键值
 @param type 值类型
 @param action 活动方法
 @param barPosition 第一个参数 这里只是为了提供多样性接口
 @param barMetrics 第二个参数 这里只是为了提供多样性接口
 */
- (void)hh_settingWithKey:(NSString *)key type:(HHThemeUnitValueType)type action:(SEL)action barPosition:(NSInteger)barPosition barMetrics:(NSInteger)barMetrics;


/**
 根据键值设置主题
 
 @param key 键值
 @param type 值类型
 @param action 活动方法
 @param state 第一个参数 这里只是为了提供多样性接口
 @param barMetrics 第二个参数 这里只是为了提供多样性接口
 */
- (void)hh_settingWithKey:(NSString *)key type:(HHThemeUnitValueType)type action:(SEL)action state:(NSInteger)state barMetrics:(NSInteger)barMetrics;

/**
 根据键值设置主题
 
 @param key 键值
 @param type 值类型
 @param action 活动方法
 @param state 第一个参数 这里只是为了提供多样性接口
 @param barMetrics 第二个参数 这里只是为了提供多样性接口
 @param style 第三个参数 这里只是为了提供多样性接口
 */
- (void)hh_settingWithKey:(NSString *)key type:(HHThemeUnitValueType)type action:(SEL)action state:(NSInteger)state barMetrics:(NSInteger)barMetrics style:(NSInteger)style;
@end

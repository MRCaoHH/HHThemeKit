//
//  NSObject+HHThemeKit.m
//  HHThemeKit
//
//  Created by caohuihui on 16/7/21.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import "NSObject+HHThemeKit.h"
#import "HHNoticeManager.h"
#import <objc/runtime.h>
#import <objc/message.h>

@implementation NSObject (HHThemeKit)

#pragma mark - 属性方法
-(HHNoticeManager *)hh_noticeManager{
    HHNoticeManager *mage = objc_getAssociatedObject(self, @selector(hh_noticeManager));
    return mage;
}

-(void)setHh_noticeManager:(HHNoticeManager *)hh_noticeManager{
    objc_setAssociatedObject(self, @selector(hh_noticeManager), hh_noticeManager, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(void)setHh_Theme:(NSMutableDictionary<NSString *,HHThemeUnitModel *> *)hh_Theme{
    objc_setAssociatedObject(self, @selector(hh_Theme), hh_Theme, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(NSMutableDictionary<NSString *,HHThemeUnitModel *> *)hh_Theme{
    NSMutableDictionary<NSString *,HHThemeUnitModel *> *theme = objc_getAssociatedObject(self, @selector(hh_Theme));
    if (theme == nil) {
        self.hh_Theme = [[NSMutableDictionary alloc]init];
    }
    if (self.hh_noticeManager == nil) {
        HHNoticeManager *mage = objc_getAssociatedObject(self, @selector(hh_noticeManager));
        if (mage == nil) {
            __weak typeof(self) weakSelf = self;
            mage = [[HHNoticeManager alloc]init:^{
                [[NSNotificationCenter defaultCenter] removeObserver:weakSelf name:HHUpdateThemeNoticeKey object:nil];
                [[NSNotificationCenter defaultCenter]addObserver:weakSelf selector:@selector(hh_UpdateTheme) name:HHUpdateThemeNoticeKey object:nil];
            } deallocBlock:^{
                [[NSNotificationCenter defaultCenter] removeObserver:weakSelf name:HHUpdateThemeNoticeKey object:nil];
            }];
            self.hh_noticeManager = mage;
        }

    }
    return theme;
}


#pragma mark - 更新主题
- (void)hh_UpdateTheme{
    for (HHThemeUnitModel *unitModel in self.hh_Theme.allValues) {
        [unitModel sendMsg:self];
    }
}

#pragma mark - 清除主题
- (void)hh_clearTheme{
    [self.hh_Theme removeAllObjects];
}

#pragma mark -  添加主题单元
- (void)hh_addThemeUnit:(NSString *)key value:(HHThemeUnitModel *)value{
    [self hh_removeThemeUnit:key];
    [self.hh_Theme setObject:value forKey:key];
}

#pragma mark - 移除主题单元
- (void)hh_removeThemeUnit:(NSString *)key{
    [self.hh_Theme removeObjectForKey:key];
}

- (void)hh_settingWithKey:(NSString *)key type:(HHThemeUnitValueType)type action:(SEL)action{
    NSString *saveKey = NSStringFromSelector(action);
    HHThemeUnitModel *unitModel = [[HHThemeUnitModel alloc]initWithKey:key action:action type:type ];
    [self hh_addThemeUnit:saveKey value:unitModel];
    [unitModel sendMsg:self];
}

- (void)hh_settingWithKey:(NSString *)key type:(HHThemeUnitValueType)type action:(SEL)action state:(NSInteger)state{
    HHThemeUnitModel *unitModel = [[HHThemeUnitModel alloc]initWithKey:key action:action type:type  oneParam:state];
    [self hh_addThemeUnit:key value:unitModel];
    [unitModel sendMsg:self];
}

- (void)hh_settingWithKey:(NSString *)key type:(HHThemeUnitValueType)type action:(SEL)action barMetrics:(NSInteger)barMetrics{
    HHThemeUnitModel *unitModel = [[HHThemeUnitModel alloc]initWithKey:key action:action type:type oneParam:barMetrics];
    [self hh_addThemeUnit:key value:unitModel];
    [unitModel sendMsg:self];
}

- (void)hh_settingWithKey:(NSString *)key type:(HHThemeUnitValueType)type action:(SEL)action barPosition:(NSInteger)barPosition barMetrics:(NSInteger)barMetrics{
    HHThemeUnitModel *unitModel = [[HHThemeUnitModel alloc]initWithKey:key action:action type:type  oneParam:barMetrics towParam:barPosition];
    [self hh_addThemeUnit:key value:unitModel];
    [unitModel sendMsg:self];
}

- (void)hh_settingWithKey:(NSString *)key type:(HHThemeUnitValueType)type action:(SEL)action state:(NSInteger)state barMetrics:(NSInteger)barMetrics{
    HHThemeUnitModel *unitModel = [[HHThemeUnitModel alloc]initWithKey:key action:action type:type oneParam:state towParam:barMetrics];
    [self hh_addThemeUnit:key value:unitModel];
    [unitModel sendMsg:self];
}

- (void)hh_settingWithKey:(NSString *)key type:(HHThemeUnitValueType)type action:(SEL)action state:(NSInteger)state barMetrics:(NSInteger)barMetrics style:(NSInteger)style{
    HHThemeUnitModel *unitModel = [[HHThemeUnitModel alloc]initWithKey:key action:action type:type oneParam:state towParam:style threeParam:barMetrics];
    [self hh_addThemeUnit:key value:unitModel];
    [unitModel sendMsg:self];
}
@end

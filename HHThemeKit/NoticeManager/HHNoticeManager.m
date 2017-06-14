//
//  HHNoticeManager.m
//  HHThemeKit
//
//  Created by caohuihui on 16/7/21.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import "HHNoticeManager.h"

@interface HHNoticeManager()
@property (nonatomic, copy) HHNoticeManagerBlock deallocBlock;
@end

@implementation HHNoticeManager

-(instancetype)init:(HHNoticeManagerBlock)initBlock deallocBlock:(HHNoticeManagerBlock)deallocBlock{
    self =  [super init];
    if (self) {
        if (initBlock) {
            initBlock();
        }
        self.deallocBlock = deallocBlock;
    }
    return self;
}

-(void)dealloc{
    if (self.deallocBlock) {
        self.deallocBlock();
    }
}
@end

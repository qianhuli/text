//
//  IndexModel.m
//  音悦台
//
//  Created by qianfeng on 14-9-13.
//  Copyright (c) 2014年 qianfeng. All rights reserved.
//

#import "IndexModel.h"

@implementation IndexModel
- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
    if ([key isEqualToString:@"id"]) {
        self.uid = value;
    }
    if ([key isEqualToString:@"description"]) {
        self.des = value;
    }
}
@end

//
//  HuaDongModel.m
//  delegateText
//
//  Created by 胡莉 on 15/7/14.
//  Copyright (c) 2015年 胡莉. All rights reserved.
//

#import "HuaDongModel.h"

@implementation HuaDongModel
-(void)setValue:(id)value forUndefinedKey:(NSString *)key{
    if ([key isEqualToString:@"id"]) {
        self.uid=value;
    }
    if ([key isEqualToString:@"description"]) {
        self.des=value;
    }
}
@end

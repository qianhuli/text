//
//  FXGControl.m
//  delegateText
//
//  Created by 胡莉 on 15/7/10.
//  Copyright (c) 2015年 胡莉. All rights reserved.
//

#import "FXGControl.h"

@implementation FXGControl
+(float)isIOS7{
    if ([[UIDevice currentDevice]systemVersion].floatValue>=7.0) {
        return 64;
    }else{
        return 44;
    }
}
@end

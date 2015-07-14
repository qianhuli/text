//
//  IndexModel.h
//  音悦台
//
//  Created by qianfeng on 14-9-13.
//  Copyright (c) 2014年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IndexModel : NSObject

@property (nonatomic,copy)NSNumber *duration;
@property (nonatomic,copy)NSNumber *hdVideoSize;
@property (nonatomic,copy)NSNumber *uid;
@property (nonatomic,copy)NSNumber *shdVideoSize;
@property (nonatomic,copy)NSNumber *status;
@property (nonatomic,copy)NSNumber *uhdVideoSize;
@property (nonatomic,copy)NSNumber *videoSize;

@property (nonatomic,copy)NSString *albumImg;
@property (nonatomic,copy)NSString *artistName;
@property (nonatomic,copy)NSString *des;
@property (nonatomic,copy)NSString *hdUrl;
@property (nonatomic,copy)NSString *playListPic;
@property (nonatomic,copy)NSString *posterPic;
@property (nonatomic,copy)NSString *promoTitle;
@property (nonatomic,copy)NSString *shdUrl;
@property (nonatomic,copy)NSString *thumbnailPic;
@property (nonatomic,copy)NSString *title;
@property (nonatomic,copy)NSString *uhdUrl;
@property (nonatomic,copy)NSString *url;

@property (nonatomic,copy)NSArray *artists;

@end

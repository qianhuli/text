//
//  rootViewController.h
//  delegateText
//
//  Created by 胡莉 on 15/7/8.
//  Copyright (c) 2015年 胡莉. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface rootViewController : UIViewController
- (void)hideTabBar;
- (void)showTabBar;
- (void)setRightItemWithImageName:(NSString *)imageName andTarget:(id)target andSelector:(SEL )sel;
- (void)setRightItemsWithImageName1:(NSString *)imageName1 andTarget1:(id)target1 andSelector1:(SEL )sel1 andImageName2:(NSString *)imageName2 andTarget2:(id)target2 andSelector2:(SEL)sel2;
@end

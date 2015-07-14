//
//  iIndexViewController.m
//  delegateText
//
//  Created by 胡莉 on 15/7/8.
//  Copyright (c) 2015年 胡莉. All rights reserved.
//

#import "iIndexViewController.h"
#import "PulsingHaloLayer.h"
#import "SeachViewController.h"
@interface iIndexViewController ()
@property(nonatomic,strong) PulsingHaloLayer *halo;
@end

@implementation iIndexViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    CGFloat w=self.view.frame.size.width;
//    CGFloat h=self.view.frame.size.height;
    
     [self setRightItemsWithImageName1:@"Moive_Share_Pengyouquan" andTarget1:self andSelector1:@selector(rightItemClick) andImageName2:@"Search" andTarget2:self andSelector2:@selector(searchBtnClick)];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)rightItemClick{
//    SettingViewController *setting = [[SettingViewController alloc]init];
    [self hideTabBar];
    NSLog(@"右边点击");
//    [self.navigationController pushViewController:setting animated:YES];
}
- (void)searchBtnClick{
    
     NSLog(@"搜索点击");
    SeachViewController *search=[[SeachViewController alloc]init];
    [self hideTabBar];
    [self.navigationController pushViewController:search animated:YES];
};
@end

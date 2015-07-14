//
//  rootViewController.m
//  delegateText
//
//  Created by 胡莉 on 15/7/8.
//  Copyright (c) 2015年 胡莉. All rights reserved.
//

#import "rootViewController.h"
#import "ViewController.h"
@interface rootViewController ()

@end

@implementation rootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"320"] forBarMetrics:UIBarMetricsDefault];
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 20, 20)];
    label.clipsToBounds = YES;
    label.text = self.title;
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor colorWithRed:1.000 green:0.944 blue:0.937 alpha:1.000];
    self.navigationItem.titleView = label;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)setRightItemWithImageName:(NSString *)imageName andTarget:(id)target andSelector:(SEL)sel{
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame=CGRectMake(0, 0, 40, 40);
    [btn addTarget:self action:sel forControlEvents:UIControlEventTouchUpInside];
    [btn setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc]initWithCustomView:btn];
    
}
-(void)setRightItemsWithImageName1:(NSString *)imageName1 andTarget1:(id)target1 andSelector1:(SEL)sel1 andImageName2:(NSString *)imageName2 andTarget2:(id)target2 andSelector2:(SEL)sel2{
    
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn1.frame = CGRectMake(0, 0, 40, 40);
    [btn1 addTarget:self action:sel1 forControlEvents:UIControlEventTouchUpInside];
    [btn1 setImage:[UIImage imageNamed:imageName1] forState:UIControlStateNormal];
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn2.frame = CGRectMake(0, 0, 40, 40);
    [btn2 addTarget:self action:sel2 forControlEvents:UIControlEventTouchUpInside];
    [btn2 setImage:[UIImage imageNamed:imageName2] forState:UIControlStateNormal];
    
    /*mark*/
//    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
//    item.width = -15;
    
    self.navigationItem.rightBarButtonItems = @[[[UIBarButtonItem alloc]initWithCustomView:btn1],[[UIBarButtonItem alloc]initWithCustomView:btn2]];
}
- (void)hideTabBar{
    ViewController *tab = (ViewController *)self.tabBarController;
    [tab hideTabBar];
}
- (void)showTabBar{
    ViewController *tab = (ViewController *)self.tabBarController;
    [tab showTabBar];
}
@end

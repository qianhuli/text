//
//  ViewController.m
//  delegateText
//
//  Created by 胡莉 on 15/7/8.
//  Copyright (c) 2015年 胡莉. All rights reserved.
//

#import "ViewController.h"
#import "iIndexViewController.h"
#import "MVViewController.h"
#import "VchartViewController.h"
#import "PlaylistViewController.h"
@interface ViewController (){
    UIView *_tabBarView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tabBar.backgroundColor=[UIColor colorWithRed:1.000 green:0.599 blue:0.707 alpha:1.000];
    iIndexViewController *index=[[iIndexViewController alloc]init];
    UINavigationController *root1=[[UINavigationController alloc]initWithRootViewController:index];
    index.title=@"首页";
    MVViewController *mvView=[[MVViewController alloc]init];
    UINavigationController *root2=[[UINavigationController alloc]initWithRootViewController:mvView];
    mvView.title=@"分类";
    VchartViewController *vchart=[[VchartViewController alloc]init];
    UINavigationController *root3=[[UINavigationController alloc]initWithRootViewController:vchart];
    vchart.title=@"榜单";
    PlaylistViewController *play=[[PlaylistViewController alloc]init];
    UINavigationController *root4=[[UINavigationController alloc]initWithRootViewController:play];
    play.title=@"推荐";
    self.viewControllers=@[root1,root2,root3,root4];
    self.tabBar.hidden=YES;
    NSArray *titleImageArray = @[@"Bottom_First",@"Bottom_MV",@"Bottom_VList",@"Bottom_MVList"];
    NSArray *titleImageArraySel = @[@"Bottom_First_Sel",@"Bottom_MV_Sel",@"Bottom_VList_Sel",@"Bottom_MVList_Sel"];
    _tabBarView = [[UIView alloc]initWithFrame:CGRectMake(0, self.view.frame.size.height-49, self.view.frame.size.width, 49)];
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 49)];
    imageView.image = [UIImage imageNamed:@"BottomBar_Icon"];
    [_tabBarView addSubview:imageView];
    [self.view addSubview:_tabBarView];
  /* 9mark */
    for (int i = 0; i < 4; i++) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake( self.view.frame.size.width/4*i, 0, self.view.frame.size.width/4, 49);
        [btn setImage:[UIImage imageNamed:titleImageArray[i]] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:titleImageArraySel[i]] forState:UIControlStateSelected];
        [btn addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
        btn.tag = 100+i;
        if (i == 0) {
            btn.selected = YES;
        }
        [_tabBarView addSubview:btn];
    }


}
- (void)btnClicked:(UIButton *)btn{
    self.selectedIndex = btn.tag-100;
    for (int i = 0; i < 4; i ++) {
        UIButton *button = (UIButton *)[_tabBarView viewWithTag:100+i];
        button.selected = NO;
    }
    btn.selected = YES;
}
- (void)hideTabBar{
    _tabBarView.frame = CGRectMake(0, self.view.frame.size.height, self.view.frame.size.width, 49);
}
- (void)showTabBar{
    _tabBarView.frame = CGRectMake(0, self.view.frame.size.height-49, self.view.frame.size.width, 49);
}
@end

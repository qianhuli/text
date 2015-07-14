//
//  SeachViewController.m
//  delegateText
//
//  Created by 胡莉 on 15/7/11.
//  Copyright (c) 2015年 胡莉. All rights reserved.
//

#import "SeachViewController.h"
#import "HotSearch.h"
@interface SeachViewController ()
{
    HotSearch *_hotsearch;
}
@end

@implementation SeachViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"搜索";
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

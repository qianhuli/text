//
//  indexCell.m
//  delegateText
//
//  Created by 胡莉 on 15/7/14.
//  Copyright (c) 2015年 胡莉. All rights reserved.
//

#import "indexCell.h"

@implementation indexCell

- (void)awakeFromNib {
    // Initialization code
}
-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self=[super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
    }
    return self;
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)dealloc {
   
    [_cellTitleLable release];
    [_btn release];
    [super dealloc];
}
@end

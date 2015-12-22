//
//  MainPageTableViewCell.m
//  wenyifan
//
//  Created by haodai on 15/12/8.
//  Copyright (c) 2015年 zhouyong. All rights reserved.
//

#import "MainPageTableViewCell.h"
@interface MainPageTableViewCell()
@property (weak, nonatomic) IBOutlet UIImageView *userPhoto;
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UIButton *followBtn;
@property (weak, nonatomic) IBOutlet UIImageView *contentImageV;
@property (weak, nonatomic) IBOutlet UILabel *content;

@end

@implementation MainPageTableViewCell

- (void)awakeFromNib {
    // Initialization code
    ViewBorderRadius(_followBtn, 2, 1, mCommonColor);
//    bcc7d1
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)follow:(id)sender {
    
}

- (void)setNovel:(Novel *)novel {
    _novel = novel;
}

@end

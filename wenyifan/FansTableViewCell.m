//
//  FansTableViewCell.m
//  wenyifan
//
//  Created by haodai on 15/12/14.
//  Copyright (c) 2015年 zhouyong. All rights reserved.
//

#import "FansTableViewCell.h"
@interface FansTableViewCell()
@property (weak, nonatomic) IBOutlet UIImageView *imageV;
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UIButton *viewsBtn;

@end

@implementation FansTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)follow:(id)sender {
    
}


@end

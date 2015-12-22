//
//  UserHeadView.m
//  wenyifan
//
//  Created by haodai on 15/12/11.
//  Copyright (c) 2015年 zhouyong. All rights reserved.
//

#import "UserHeadView.h"
@interface UserHeadView ()
@property (weak, nonatomic) IBOutlet UIButton *photoBtn;
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *fanNum;
@property (weak, nonatomic) IBOutlet UILabel *viewsNum;

@end

@implementation UserHeadView

- (void)awakeFromNib {
    self.backgroundColor = BackgroundColor;
    ViewBorderRadius(_photoBtn, _photoBtn.width/2, 2, [UIColor whiteColor]);
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (IBAction)lookupPhoto:(id)sender {
    if (self.lookPhoto) {
        self.lookPhoto();
    }
}

- (IBAction)edit:(id)sender {
    if (self.editMessage) {
        self.editMessage();
    }
}

- (IBAction)meFollow:(id)sender {
    if (self.meFollow) {
        self.meFollow();
    }
}

- (IBAction)followMe:(id)sender {
    if (self.followMe) {
        self.followMe();
    }
}


@end

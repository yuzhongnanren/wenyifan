//
//  TitleForHead.m
//  wenyifan
//
//  Created by haodai on 15/12/11.
//  Copyright (c) 2015年 zhouyong. All rights reserved.
//

#import "TitleForHead.h"

@implementation TitleForHead
{
    UIButton *_myBtn;
    UIButton *_viewBtn;
    UIView *_line;
}
- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        [self initView];
    }
    return self;
}

- (void)initView {
    _myBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    _myBtn.frame = CGRectMake(0, 20, SCREEN_WIDTH/2, 44);
    [_myBtn setTitle:@"我的" forState:0];
    _myBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    [_myBtn setTitleColor:mCommonColor forState:0];
    [_myBtn addTarget:self action:@selector(my:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_myBtn];
    
    UIView *line = [[UIView alloc] initWithFrame:CGRectMake(SCREEN_WIDTH/2 - 0.5, 32, 1, 20)];
    line.backgroundColor = RGBACOLOR(136.f, 136.f, 136.f, 1.0f);
    [self addSubview:line];
    
    _viewBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    _viewBtn.frame = CGRectMake(SCREEN_WIDTH/2, 20, SCREEN_WIDTH/2, 44);
    [_viewBtn setTitle:@"我的关注" forState:0];
     _viewBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    [_viewBtn setTitleColor:[UIColor blackColor] forState:0];
    [_viewBtn addTarget:self action:@selector(friend:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_viewBtn];
    
    _line = [[UIView alloc] initWithFrame:CGRectMake(0, 62, 100, 2)];
    _line.backgroundColor = mCommonColor;
    _line.center = CGPointMake(_myBtn.center.x, _line.center.y);
    [self addSubview:_line];
    
    UIView *v = [[UIView alloc] initWithFrame:CGRectMake(0, 64, SCREEN_WIDTH, 10)];
    v.backgroundColor = BackgroundColor;
    [self addSubview:v];
    
}

- (void)my:(id)sender {
    [_myBtn setTitleColor:mCommonColor forState:0];
    [_viewBtn setTitleColor:[UIColor blackColor] forState:0];
    [UIView animateWithDuration:0.2 animations:^{
         _line.center = CGPointMake(_myBtn.center.x, _line.center.y);
    }];
    
    if (self.block) {
        self.block(MY_NOVEL);
    }
}

- (void)friend:(id)sender {
    [_myBtn setTitleColor:[UIColor blackColor] forState:0];
    [_viewBtn setTitleColor:mCommonColor forState:0];
    [UIView animateWithDuration:0.2 animations:^{
        _line.center = CGPointMake(_viewBtn.center.x, _line.center.y);
    }];
    if (self.block) {
        self.block(FRIEND_NOVEL);
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end

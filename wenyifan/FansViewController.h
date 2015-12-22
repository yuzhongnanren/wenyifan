//
//  FansViewController.h
//  wenyifan
//
//  Created by haodai on 15/12/14.
//  Copyright (c) 2015年 zhouyong. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger, FollowType) {
    FOLLOW_ME = 0,//关注我的粉丝
    ME_FOLLOW,//我关注的
};

@interface FansViewController : UIViewController
@property(nonatomic,assign)FollowType type;

@end

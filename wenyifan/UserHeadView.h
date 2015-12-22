//
//  UserHeadView.h
//  wenyifan
//
//  Created by haodai on 15/12/11.
//  Copyright (c) 2015年 zhouyong. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^LookPhoto)(void);
typedef void(^EditMessage)(void);
typedef void(^FollowMe)(void);
typedef void(^MeFollow)(void);

@interface UserHeadView : UIView
@property (nonatomic, copy) LookPhoto lookPhoto;
@property (nonatomic, copy) EditMessage editMessage;
@property (nonatomic, copy) FollowMe followMe;
@property (nonatomic, copy) MeFollow meFollow;

@end

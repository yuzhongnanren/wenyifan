//
//  TitleForHead.h
//  wenyifan
//
//  Created by haodai on 15/12/11.
//  Copyright (c) 2015年 zhouyong. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger, Type) {
    MY_NOVEL = 0,
    FRIEND_NOVEL,
};
typedef void(^SelectedType)(Type);

@interface TitleForHead : UIView
@property(nonatomic,assign)Type type;
@property(nonatomic,copy)SelectedType block;

@end

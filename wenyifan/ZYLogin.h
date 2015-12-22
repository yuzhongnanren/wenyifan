//
//  ZYLogin.h
//  zhengxin
//
//  Created by haodai on 15/9/26.
//  Copyright (c) 2015年 haodai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

@interface ZYLogin : NSObject
@property (nonatomic, strong) User *user;
+ (instancetype)shareInstance;
- (BOOL)save:(User*)user;

- (User *)localUser;
- (void)goLoginViewController;
- (void)goZYTabViewController;

@end

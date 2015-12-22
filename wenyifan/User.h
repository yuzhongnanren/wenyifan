//
//  User.h
//  zhengxin
//
//  Created by haodai on 15/9/25.
//  Copyright (c) 2015年 haodai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject<NSCopying,NSCoding>
@property (nonatomic, assign) NSInteger uid;
@property (nonatomic, strong) NSString *key;
@property (nonatomic, strong) NSString *telephone;
@property (nonatomic, strong) NSString *photoPath;
@property (nonatomic, strong) NSString *loginTime;
@property (nonatomic, strong) NSString *lat;
@property (nonatomic, strong) NSString *lng;
@property (nonatomic, strong) NSString *id_card;
@property (nonatomic, assign) BOOL isLogin;//是否已经登录

@end

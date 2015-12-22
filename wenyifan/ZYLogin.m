//
//  ZYLogin.m
//  zhengxin
//
//  Created by haodai on 15/9/26.
//  Copyright (c) 2015年 haodai. All rights reserved.
//

#import "ZYLogin.h"
//#import "ZYTabViewController.h"

static ZYLogin *login = nil;
@implementation ZYLogin

+ (instancetype)shareInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        login = [[ZYLogin alloc] init];
    });
    return login;
}

- (BOOL)save:(User*)user {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *path = [paths objectAtIndex:0];
    NSString *userSavePath = [path stringByAppendingPathComponent:@"wenyifan_user.archiver"];
    return [NSKeyedArchiver archiveRootObject:user toFile:userSavePath];
}



- (User *)localUser {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *path = [paths objectAtIndex:0];
    NSString *userSavePath = [path stringByAppendingPathComponent:@"wenyifan_user.archiver"];
    if ([[NSFileManager defaultManager] fileExistsAtPath:userSavePath]) {
        id user = [NSKeyedUnarchiver unarchiveObjectWithFile:userSavePath];
        if ([user isKindOfClass:[User class]]) {
            self.user = user;
            return user;
        }
    }else {
        self.user = [[User alloc] init];
    }
    return nil;
}

//- (void)goLoginViewController {
//    UIViewController *vc = StoryBoardDefined(@"login");
//    appDelegate().window.rootViewController = vc;
//}
//
//- (void)goZYTabViewController {
//    ZYTabViewController *tab  = StoryBoardDefined(@"ZYTabViewController");
//    appDelegate().window.rootViewController = tab;
//}


@end

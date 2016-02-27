//
//  HTTPRequestManager.m
//  hunchelaila
//
//  Created by zhouyong on 15-3-17.
//  Copyright (c) 2015年 百万新娘(北京)科技有限公司. All rights reserved.
//

#import "HTTPRequestManager.h"
#import "AFNetworking.h"
#import "MBProgressHUD.h"
NSString *const HTTPServerError = @"服务器错误";
NSString *const HTTPConnectionError = @"网络连接失败";

@implementation HTTPRequestManager

+ (instancetype)manager {
    return [[self class] new];
}

- (void)POST:(NSString*)appendString
  dictionary:(NSDictionary*)parameters
     success:(void (^)(id responseObject))success
     failure:(void (^)(NSError *error))failure
        view:(UIView*)view
    progress:(BOOL)p {
    MBProgressHUD *hud = [[MBProgressHUD alloc] initWithView:view];
    [view addSubview:hud];
    if (p) {
        [hud show:YES];
    }
    hud.removeFromSuperViewOnHide = YES;
<<<<<<< HEAD
   [AFHTTPRequestOperationManager manager].responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"text/html",@"application/json",@"text/json", @"text/javascript",@"text/plain",nil];
    [[AFHTTPRequestOperationManager manager] POST:[BaseUrl stringByAppendingPathComponent:appendString] parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
=======
    [[AFHTTPRequestOperationManager manager] POST:BaseUrl parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
>>>>>>> 5e0a2ef121d480ab5cb5c5f6ed87aae0a2fc1bd1
        NSLog(@"%@",responseObject);
        NSLog(@"%@",[[responseObject objectForKey:@"rs_msg"] stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding]);
        if ([[responseObject objectForKey:@"rs_code"] integerValue] == 1000) {
            [hud hide:YES];
            if (success) {
                success(responseObject);
            }
        }else {
            hud.mode = MBProgressHUDModeText;
            if (isNotNull([responseObject objectForKey:@"rs_msg"])) {
               hud.labelText = [responseObject objectForKey:@"rs_msg"];
            }else {
               hud.labelText = HTTPServerError;
            }
            [hud hide:YES afterDelay:1];
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        hud.mode = MBProgressHUDModeText;
        hud.labelText = HTTPConnectionError;
        [hud hide:YES afterDelay:1];
        if (failure) {
            failure(error);
        }
    }];
}


- (void)GET:(NSString*)appendString
 dictionary:(NSDictionary*)parameters
    success:(void (^)(id responseObject))success
    failure:(void (^)(NSError *error))failure
       view:(UIView*)view
   progress:(BOOL)p {
    MBProgressHUD *hud = [[MBProgressHUD alloc] initWithView:view];
    [view addSubview:hud];
    if (p) {
        [hud show:YES];
    }
    hud.removeFromSuperViewOnHide = YES;
    [[AFHTTPRequestOperationManager manager] GET:[BaseUrl stringByAppendingPathComponent:appendString] parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"%@",responseObject);
        if ([[responseObject objectForKey:@"rs_code"] integerValue] == 1000) {
            [hud hide:YES];
            if (success) {
                success(responseObject);
            }
        }else {
            hud.mode = MBProgressHUDModeText;
            hud.labelText = HTTPServerError;
            [hud hide:YES afterDelay:1];
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        hud.mode = MBProgressHUDModeText;
        hud.labelText = HTTPConnectionError;
        [hud hide:YES afterDelay:1];
        if (failure) {
            failure(error);
        }
    }];
}


@end

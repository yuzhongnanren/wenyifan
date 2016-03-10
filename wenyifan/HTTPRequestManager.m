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
//    [AFHTTPRequestOperationManager manager].requestSerializer = [AFJSONRequestSerializer serializer];
//    [AFHTTPRequestOperationManager manager].responseSerializer = [AFJSONResponseSerializer serializer];
//    [[AFHTTPRequestOperationManager manager].requestSerializer setValue:@"application/json"forHTTPHeaderField:@"Accept"];
    [[AFHTTPRequestOperationManager manager].requestSerializer setValue:@"text/html;charset=UTF-8"forHTTPHeaderField:@"Content-Type"];
    [[AFHTTPRequestOperationManager manager] POST:BaseUrl parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"%@",responseObject);
        NSLog(@"%@",[[responseObject objectForKey:@"errorMessage"] stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding]);
        if ([[responseObject objectForKey:@"responseCode"] integerValue] == 1) {
            [hud hide:YES];
            if (success) {
                success(responseObject);
            }
        }else {
            hud.mode = MBProgressHUDModeText;
            if (isNotNull([responseObject objectForKey:@"errorMessage"])) {
               hud.labelText = [responseObject objectForKey:@"errorMessage"];
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

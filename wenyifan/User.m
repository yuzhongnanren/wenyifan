//
//  User.m
//  zhengxin
//
//  Created by haodai on 15/9/25.
//  Copyright (c) 2015年 haodai. All rights reserved.
//

#import "User.h"
#define kUidKey @"kUidKey"
#define kUserKey @"kUserKey"
#define kTelKey @"TelephoneKey"
#define kPhotoPathKey @"PhotoPathKey"
#define kLoginTimeKey @"LoginTimeKey"
#define kLatKey @"kLatKey"
#define kLngKey @"kLngKey"
#define kIsLogin @"kIsLogin"
#define kIdCard @"kIdCard"

@implementation User
- (id)init {
    if (self = [super init]) {
        self.telephone = @"";
        self.photoPath = @"";
        self.loginTime = @"";
        self.lat = @"0";
        self.lng = @"0";
        self.isLogin = NO;
        self.id_card = @"0";
        self.uid = 0;
        self.key = @"";
    }
    return self;
}

#pragma mark - NSCoding
- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:_telephone forKey:kTelKey];
    [aCoder encodeObject:_photoPath forKey:kPhotoPathKey];
    [aCoder encodeObject:_loginTime forKey:kLoginTimeKey];
    [aCoder encodeObject:_lat forKey:kLatKey];
    [aCoder encodeObject:_lng forKey:kLngKey];
    [aCoder encodeBool:_isLogin forKey:kIsLogin];
    [aCoder encodeObject:_id_card forKey:kIdCard];
    [aCoder encodeObject:_key forKey:kUserKey];
    [aCoder encodeInteger:_uid forKey:kUidKey];
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super init]) {
        _telephone = [aDecoder decodeObjectForKey:kTelKey];
        _photoPath = [aDecoder decodeObjectForKey:kPhotoPathKey];
        _loginTime = [aDecoder decodeObjectForKey:kLoginTimeKey];
        _lat = [aDecoder decodeObjectForKey:kLatKey];
        _lng = [aDecoder decodeObjectForKey:kLngKey];
        _isLogin = [aDecoder decodeBoolForKey:kIsLogin];
        _id_card = [aDecoder decodeObjectForKey:kIdCard];
        _uid = [aDecoder decodeIntForKey:kUidKey];
        _key = [aDecoder decodeObjectForKey:kUserKey];
    }
    return self;
}

#pragma mark - NSCoping
- (id)copyWithZone:(NSZone *)zone {
    User *user = [[User allocWithZone:zone] init];
    user.telephone = self.telephone;
    user.photoPath = self.photoPath;
    user.loginTime = self.loginTime;
    user.lat = self.lat;
    user.lng = self.lng;
    user.isLogin = self.isLogin;
    user.id_card = self.id_card;
    user.uid = self.uid;
    user.key = self.key;
    return user;
}





@end

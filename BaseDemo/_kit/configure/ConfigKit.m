//
//  ConfigKit.m
//  BaseDemo
//
//  Created by yw on 15/12/31.
//  Copyright © 2015年 yw. All rights reserved.
//

#import "ConfigKit.h"
#import "BaseHeader.h"

static ConfigKit *sharedConfigKit;

@implementation ConfigKit

+ (instancetype)kit {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedConfigKit = [[ConfigKit alloc] init];
    });
    return sharedConfigKit;
}

#pragma mark - PROPERTY

- (NSDictionary *)keys {
    return @{
             @"ModSMSAppKey":@"",
             @"ModSMSAppSecret":@"",
             
             @"AlipayPartnerID":@"",
             @"AlipaySellerID":@"",
             @"AlipayPrivateKey":@"",
             @"AlipayNotifyURL":@"",
             
             @"WeChatAppID":@"",//@"",
             @"WeChatAppSecret":@"",//@"",
             @"WeChatAppDesc":@"app iOS 1.0.0",
             
             @"WeiboAppKey":@"",
             @"WeiboAppSecret":@"",
             @"WeiboRedirectURI":@"https://api.weibo.com/oauth2/default.html",
             
             @"QQID":@"",
             @"QQAppKey":@"",
             
             @"BaiduPushKey":@"",
             
             @"BaichuanAppKey":@"",
             };
    
    
}


- (void)setTarget:(NSDate *)target {
    if (target == nil) {
        [[NSUserDefaults standardUserDefaults] removeObjectForKey:VERIFICATION_CODE_COUNT_DOWN];
        [[NSUserDefaults standardUserDefaults] synchronize];
        return;
    }
    
    [[NSUserDefaults standardUserDefaults] setObject:target forKey:VERIFICATION_CODE_COUNT_DOWN];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (NSDate *)target {
    return [[NSUserDefaults standardUserDefaults] objectForKey:VERIFICATION_CODE_COUNT_DOWN];
}

#pragma mark - LOGIN

- (BOOL)isLogin{

    return NO;
}

- (void)logout{

    
}

#pragma mark | DEVICE

- (NSString *)deviceID{

    return @"";
}

#pragma mark - VERSION

- (NSString *)currentVersion{

    return @"";
}

@end

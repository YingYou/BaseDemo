//
//  DataKit.m
//  BaseDemo
//
//  Created by yw on 15/12/31.
//  Copyright © 2015年 yw. All rights reserved.
//

#import "DataKit.h"

NSString *const USER_LOGIN_TOKEN = @"com.xx.user.login.token";

@implementation DataKit

@synthesize currentUserID = _currentUserID;
@synthesize token = _token;

+ (instancetype)kit {
    
    static DataKit *sharedKit;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedKit = [[DataKit alloc] init];
  
    });
    
    return sharedKit;
}

- (instancetype)init {
    if (self = [super init]) {
    }
    return self;
}

#pragma mark | LOGIN REG USER

- (void)setCurrentUserID:(NSUInteger)currentUserID {
    
    if (currentUserID == 0) {
        // REMOVE
        // LOGOUT
        _currentUserID = 0;
        [[NSUserDefaults standardUserDefaults] removeObjectForKey:@""];
        [[NSUserDefaults standardUserDefaults] synchronize];
        return;
    }
    
    _currentUserID = currentUserID;
    [[NSUserDefaults standardUserDefaults] setInteger:_currentUserID forKey:@""];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (NSUInteger)currentUserID {
    if (_currentUserID == 0) {
        _currentUserID = (NSUInteger)[[NSUserDefaults standardUserDefaults] integerForKey:@""];
    }
    return _currentUserID;
}

- (NSString *)token {
    return [[NSUserDefaults standardUserDefaults] objectForKey:USER_LOGIN_TOKEN];
}

- (void)setToken:(NSString *)token {
    if (token == nil || [token isEqualToString:@""]) {
        // TO REMOVE
        [[NSUserDefaults standardUserDefaults] removeObjectForKey:USER_LOGIN_TOKEN];
        [[NSUserDefaults standardUserDefaults] synchronize];
        _token = nil;
        return;
    }
    
    _token = token;
    NSLog(@"TOKEN SHOULD NOT BE SET BY THIS WAY");
}

#pragma mark---USER
- (void)storageUser:(NSDictionary *)userinfo{

    
}

@end

//
//  ConfigKit.h
//  BaseDemo
//
//  Created by yw on 15/12/31.
//  Copyright © 2015年 yw. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ConfigKit : NSObject

@property (nonatomic, strong) NSDictionary *keys;

@property (nonatomic, strong) NSDate *target;


#pragma mark - LOGIN

- (BOOL)isLogin;

- (void)logout;

#pragma mark | DEVICE

- (NSString *)deviceID;

#pragma mark - VERSION

- (NSString *)currentVersion;
@end

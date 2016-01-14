//
//  DataKit.h
//  BaseDemo
//
//  Created by yw on 15/12/31.
//  Copyright © 2015年 yw. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataKit : NSObject

@property (nonatomic, assign) NSUInteger currentUserID;
@property (nonatomic, strong) NSString *token;

+ (instancetype)kit;

#pragma mark | LOGIN REG USER

- (void)storageUser:(NSDictionary *)userinfo;

/**数据库操作*/
//- (User *)currentUser;

@end

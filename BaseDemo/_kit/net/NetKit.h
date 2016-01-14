//
//  NetKit.h
//  BaseDemo
//
//  Created by yw on 15/12/31.
//  Copyright © 2015年 yw. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UIImage;

@interface NetKit : NSObject

+ (instancetype)kit;

- (void)POSTWithURLString:(NSString *)URLString
               parameters:(NSDictionary *)params
                  success:(void (^)(id ret))success
                    error:(void (^)(NSInteger code, NSString *msg, id ret))apierror
                  failure:(void (^)(NSError *error))failure;

- (void)pGETWithURLString:(NSString *)URLString
               parameters:(NSArray *)params
                  success:(void (^)(id ret))success
                    error:(void (^)(NSInteger code, NSString *msg, id ret))apierror
                  failure:(void (^)(NSError *error))failure;

- (void)GETWithURLString:(NSString *)URLString
              parameters:(NSDictionary *)params
                 success:(void (^)(id ret))success
                   error:(void (^)(NSInteger code, NSString *msg, id ret))apierror
                 failure:(void (^)(NSError *error))failure;

- (void)multipartFormDataPOST:(NSString *)URLString
                   parameters:(NSDictionary *)param
                     andImage:(UIImage *)image
                      success:(void (^)(id ret))success
                        error:(void (^)(NSInteger code, NSString *msg, id ret))apierror
                      failure:(void (^)(NSError *error))failure;

@end

//
//  NetKit.m
//  BaseDemo
//
//  Created by yw on 15/12/31.
//  Copyright © 2015年 yw. All rights reserved.
//

#import "NetKit.h"
#import <AFNetworking.h>
#import "Const.h"

@interface NetKit () {
    
    __strong AFHTTPRequestOperationManager *manager;
}
@end

static NetKit *sharedKit;

@implementation NetKit

+ (instancetype)kit {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedKit = [[NetKit alloc] init];
    });
    return sharedKit;
}

- (instancetype)init {
    if (self = [super init]) {
        manager = [[AFHTTPRequestOperationManager alloc] initWithBaseURL:[NSURL URLWithString:BASE_API]];
        
        AFJSONResponseSerializer *jsonser = [AFJSONResponseSerializer serializer];
        //		jsonser.readingOptions = NSJSONReadingAllowFragments;
        manager.responseSerializer = jsonser;
        
        //		NSMutableSet *acceptset = [manager.responseSerializer.acceptableContentTypes mutableCopy];
        //		[acceptset addObject:@"text/html"];
        //		manager.responseSerializer.acceptableContentTypes = [acceptset copy];
    }
    return self;
}

- (void)POSTWithURLString:(NSString *)URLString parameters:(NSDictionary *)params success:(void (^)(id))success error:(void (^)(NSInteger, NSString *, id))apierror failure:(void (^)(NSError *))failure {
    
    [manager POST:[@"/api" stringByAppendingString:URLString] parameters:params success:^(AFHTTPRequestOperation *operation, id resp) {
        
        if ([resp[@"code"] integerValue] == 0) {
            success(resp);
        } else {
            apierror([resp[@"code"] integerValue], resp[@"msg"], resp);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(error);
        NSLog(@"%@", operation.request);
    }];
}

- (void)GETWithURLString:(NSString *)URLString parameters:(NSDictionary *)params success:(void (^)(id))success error:(void (^)(NSInteger, NSString *, id))apierror failure:(void (^)(NSError *))failure{
    [manager GET:[@"/api" stringByAppendingString:URLString] parameters:params success:^(AFHTTPRequestOperation *operation, id resp) {
        
        if ([resp[@"code"] integerValue] == 0) {
            success(resp);
        } else {
            apierror([resp[@"code"] integerValue], resp[@"msg"], resp);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(error);
    }];
    
}

- (void)multipartFormDataPOST:(NSString *)URLString parameters:(NSDictionary *)param andImage:(UIImage *)image success:(void (^)(id))success error:(void (^)(NSInteger, NSString *, id))apierror failure:(void (^)(NSError *))failure {
    
    
    [manager POST:[@"/api" stringByAppendingString:URLString] parameters:param constructingBodyWithBlock:^(id<AFMultipartFormData> formData) {
        
        if (image != nil) {
            [formData appendPartWithFileData:UIImageJPEGRepresentation(image, 1.0)
                                        name:@"file"
                                    fileName:[NSString stringWithFormat:@"%@.jpg", @""]
                                    mimeType:@"image/jpeg"];
        }
        
    } success:^(AFHTTPRequestOperation *operation, id resp) {
        if ([resp[@"code"] integerValue] == 0) {
            success(resp);
        } else {
            apierror([resp[@"code"] integerValue], resp[@"msg"], resp);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(error);
    }];
}


@end

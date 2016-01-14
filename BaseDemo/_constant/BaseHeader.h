//
//  BaseHeader.h
//  BaseDemo
//
//  Created by yw on 15/12/31.
//  Copyright © 2015年 yw. All rights reserved.
//

#ifndef BaseHeader_h
#define BaseHeader_h

#define kScreen [UIScreen mainScreen].bounds
#define HexRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#import "Const.h"
#import "Library.h"

#import "IntroViewController.h"

#endif /* BaseHeader_h */

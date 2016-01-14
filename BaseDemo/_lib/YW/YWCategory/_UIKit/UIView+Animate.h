//
//  UIView+Animate.h
//  BaseDemo
//
//  Created by yw on 16/1/13.
//  Copyright © 2016年 yw. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    AnimateViewPositionTop = 1,
    AnimateViewPositionRight = 2,
    AnimateViewPositionBottom = 3,
    AnimateViewPositionLeft = 4,
} AnimateViewPosition;

@interface UIView (Animate)

-(void)showFromScreen:(AnimateViewPosition)position;

@end

//
//  MacroIOS.h
//  BaseDemo
//
//  Created by yw on 16/1/12.
//  Copyright © 2016年 yw. All rights reserved.
//

#ifndef MacroIOS_h
#define MacroIOS_h

#pragma mark - FRAME

#define DELTA7 ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0 ? 0 : 20)

#define WIDTH [UIScreen mainScreen].bounds.size.width

#define HEIGHT [UIScreen mainScreen].bounds.size.height

#define MAX_LENGTH MAX(WIDTH, HEIGHT)

#define CENTER_X 160

#define CENTER_P CGPointMake(HEIGHT/2, 160)

#pragma mark - OS VERSION

#define iOS8 ( ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0) && ([[[UIDevice currentDevice] systemVersion] floatValue] < 9.0) )

#define iOS7 ( ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0) && ([[[UIDevice currentDevice] systemVersion] floatValue] < 8.0) )

#define iOS6 ( ([[[UIDevice currentDevice] systemVersion] floatValue] >= 6.0) && ([[[UIDevice currentDevice] systemVersion] floatValue] < 7.0) )

#define iOS5 ( ([[[UIDevice currentDevice] systemVersion] floatValue] >= 5.0) && ([[[UIDevice currentDevice] systemVersion] floatValue] < 6.0) )

#pragma mark - MODEL DETECTION

#define iPhone (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)

#define iPad (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)

#define iPhone5 ( iPhone && ( fabs( (double)HEIGHT - (double)568 ) < DBL_EPSILON ) )

#define iPhone6 ( iPhone && MAX_LENGTH == 667.0 )

#define iPhone6P ( iPhone && MAX_LENGTH == 736.0 )

#define iPod ( [[[UIDevice currentDevice] model] isEqualToString:@"iPod touch"] )


#endif /* MacroIOS_h */

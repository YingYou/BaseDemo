//
//  SVProgressHUD+Additional.h
//  LUO YU
//
//  CREATED BY RICK LUO ON 7/23/13.
//  COPYRIGHT (C) 2013 LUO YU. ALL RIGHTS RESERVED.
//

#import "SVProgressHUD.h"

@interface SVProgressHUD (Additions)

// SHOW ERROR STATUS WITH A STRING USING C PRINTG-STYLE FORMATTING
+ (void)showErrorWithFormatStatus:(NSString *)format, ... NS_FORMAT_FUNCTION(1,2);

// SHOW SUCCESS STATUS WITH A STRING USING C PRINTG-STYLE FORMATTING
+ (void)showSuccessWithFormatStatus:(NSString *)format, ... NS_FORMAT_FUNCTION(1, 2);

// SHOW HUD WHEN IT'S VISIBLE
+ (void)tryToShowErrorWithFormatStatus:(NSString *)format, ... NS_FORMAT_FUNCTION(1,2);

+ (void)showHeart;

@end

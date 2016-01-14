//
//  MBProgressHUD+Additions.m
//  LUO YU
//
//  CREATED BY LUO YU ON 9/18/15.
//  COPYRIGHT © 2015 LUO YU. ALL RIGHTS RESERVED.
//

#import "MBProgressHUD+Additions.h"

@implementation MBProgressHUD (Additions)

+ (MBProgressHUD *)showHUDinView:(UIView *)inview withText:(NSString *)text {
	
	MBProgressHUD *hud = [[MBProgressHUD alloc] initWithView:inview];
	[inview addSubview:hud];
	
	UIImageView *ivpig = [[UIImageView alloc] init];
	[ivpig setAnimationImages:@[[UIImage imageNamed:@"pullrefresh-pig-1"],
								[UIImage imageNamed:@"pullrefresh-pig-2"]]];
	ivpig.frame = (CGRect){0, 0, 107, 59};
	[ivpig setAnimationRepeatCount:0];
	[ivpig setAnimationDuration:0.30];
	[ivpig startAnimating];
	
	hud.mode = MBProgressHUDModeCustomView;
	
	hud.customView = ivpig;
	if (text == nil || [text isEqualToString:@""]) {
		hud.labelText = @"努力加载中...";
	} else {
		hud.labelText = text;
	}
	
	[hud show:YES];
	
	return hud;
}

@end

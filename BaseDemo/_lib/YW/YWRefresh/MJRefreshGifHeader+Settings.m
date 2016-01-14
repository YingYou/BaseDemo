//
//  MJRefreshGifHeader+Settings.m
//  LUO YU
//
//  CREATED BY LUO YU ON 7/9/15.
//  COPYRIGHT (C) 2015 LUO YU. ALL RIGHTS RESERVED.
//

#import "MJRefreshGifHeader+Settings.h"
#import "BaseHeader.h"

@implementation MJRefreshGifHeader (Settings)

- (void)configureForYome {

	[self setImages:@[
					  [UIImage imageNamed:@"pullrefresh-pig-1"],
					  [UIImage imageNamed:@"pullrefresh-pig-2"],
					  ]
		   duration:0.35
		   forState:MJRefreshStateRefreshing];
//	self.backgroundColor = [UIColor colorF8F8FA];
	self.lastUpdatedTimeLabel.hidden = YES;
	self.stateLabel.hidden = YES;
	
}

@end

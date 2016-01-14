//
//  MJRefreshAutoGifFooter+Settings.m
//  LUO YU
//
//  CREATED BY LUO YU ON 9/1/15.
//  COPYRIGHT (C) 2015 LUO YU. ALL RIGHTS RESERVED.
//

#import "MJRefreshAutoGifFooter+Settings.h"
#import "SVProgressHUD+Additions.h"

@implementation MJRefreshAutoGifFooter (Settings)

- (void)configureForYome {
	
}

- (void)resetPage {
	[self resetNoMoreData];
}

- (void)endPage {
	self.state = MJRefreshStateNoMoreData;
	[SVProgressHUD showSuccessWithStatus:@"主人, 只有这么多啦~"];
	[self noticeNoMoreData];
	
	[self setTitle:@"已经是最后一页啦" forState:MJRefreshStateNoMoreData];
	[self setTitle:@"正在努力加载更多内容..." forState:MJRefreshStateRefreshing];
}

@end

//
//  IntroViewController.m
//  BaseDemo
//
//  Created by yw on 16/1/12.
//  Copyright © 2016年 yw. All rights reserved.
//

#import "IntroViewController.h"
#import "BaseHeader.h"

@interface IntroViewController ()<UIScrollViewDelegate>{

    UIScrollView *svCont;
    UIPageControl *svPControl;
}

@end

@implementation IntroViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    svCont = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, WIDTH, HEIGHT)];
    svCont.contentSize = (CGSize){WIDTH*4,HEIGHT};
    [svCont setPagingEnabled:YES];
    [svCont setBounces:YES];
    svCont.showsHorizontalScrollIndicator = NO;
    
    NSArray *array = [NSArray arrayWithObjects:[UIColor redColor],[UIColor greenColor],[UIColor yellowColor],[UIColor orangeColor], nil];
    for (int i = 0; i < array.count; i++) {
        
        UIView *view = [[UIView alloc]initWithFrame:CGRectMake(i*svCont.frame.size.width, 0, svCont.frame.size.width, svCont.frame.size.height)];
        view.backgroundColor = array[i];
        [svCont addSubview:view];
    }
    svCont.delegate = self;
    [self.view addSubview:svCont];
    
    svPControl = [[UIPageControl alloc]initWithFrame:CGRectMake(0, HEIGHT-40, WIDTH, 30)];
    svPControl.numberOfPages = array.count;
    svPControl.currentPage = 0;
    [svPControl addTarget:self action:@selector(pageTurn:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:svPControl];
    
}

#pragma mark-UIPageControl---
-(void)pageTurn:(UIPageControl*)sender{

    //令UIScrollView做出相应的滑动显示
    CGSize viewSize = svCont.frame.size;
    CGRect rect = CGRectMake(sender.currentPage * viewSize.width, 0, viewSize.width, viewSize.height);
    [svCont scrollRectToVisible:rect animated:YES];
}

#pragma mark-----scroll--delegate
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{

    //更新UIPageControl的当前页
    CGPoint offset = svCont.contentOffset;
    CGRect bounds = svCont.frame;
    [svPControl setCurrentPage:offset.x / bounds.size.width];
    NSLog(@"%f",offset.x / bounds.size.width);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark | NETWORKING

#pragma mark - DELEGATE

#pragma mark | UIScrollViewDelegate

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    CGFloat xoff = scrollView.contentOffset.x;
    
    if (xoff < 0) {
        
    } else if (xoff >= 0 && xoff < WIDTH) {
        
    } else if (xoff >= WIDTH && xoff < WIDTH * 2) {
        
    } else if (xoff >= WIDTH * 2 && xoff < WIDTH * 3) {
        
    } else if (xoff >= WIDTH * 3 && xoff <= WIDTH * 3 + WIDTH/4) {
        
    } else if (xoff > WIDTH * 3 + WIDTH/4) {
        [self removeSelf];
    }
}

-(void)removeSelf{

    svCont.scrollEnabled = NO;
    
    [UIView animateWithDuration:ANIMATE delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        svCont.center = (CGPoint){-WIDTH/2, self.view.bounds.size.height/2};
        self.view.alpha = 0;
    } completion:^(BOOL finished) {
        [self dismissViewControllerAnimated:NO completion:^{}];
    }];

    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

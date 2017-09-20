//
//  ViewController.m
//  文字轮播
//
//  Created by  on 2017/4/1.
//  Copyright © 2017年 . All rights reserved.
//
/*把数据源给我,实现文字无限轮播,就是不管有多少条数据*/
//只适合放在首页，页面不会被释放。如果可释放页面。需要把定时器销毁，否则会造成内存泄漏；
#import "ViewController.h"
#import "XBTextLoopView.h"
@interface ViewController ()
@property (nonatomic, strong) XBTextLoopView *loopView;
@end

@implementation ViewController
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    //添加视图放在viewDidAppear，如果放在viewDidLoad刚开始会有不显示情况出现
    [self.view addSubview:self.loopView];
}
- (void)viewDidLoad {
    [super viewDidLoad];
  //  [self.view addSubview:self.loopView];
    self.loopView.selectBlock = ^(NSString *selectString, NSInteger index) {
        NSLog(@"%@===index%ld", selectString, index);
    };
}
- (XBTextLoopView *)loopView{
    if (!_loopView) {
        _loopView = [[XBTextLoopView alloc]initWithFrame:CGRectMake(100, 100, 200, 40)];
        //需要数据源，设定滚动时间;
        //数据源可传model  对tabViewCell titleLabe、image、   进行赋值 也可自定制cell 多种选择；
        _loopView.dataSource = @[@"我是跑马灯😆1", @"我是跑马灯😆2", @"我是跑马灯😆3"];
        _loopView.interval = 5.0;
    }
    return _loopView;
}
@end

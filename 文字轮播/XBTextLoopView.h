//
//  XBTextLoopView.h
//  文字轮播
//
//  Created by  on 2017/4/9.
//  Copyright © 2017年 . All rights reserved.
//
#import <UIKit/UIKit.h>

typedef void(^selectTextBlock)(NSString *selectString, NSInteger index);

@interface XBTextLoopView : UIView
@property (nonatomic, strong) NSArray *dataSource;
@property (nonatomic, weak) UITableView *tableView;
@property (nonatomic, assign) NSTimeInterval interval;
@property (nonatomic, strong) NSTimer *myTimer;
@property (nonatomic, assign) NSInteger currentRowIndex;
@property (nonatomic, copy) selectTextBlock selectBlock;

@end

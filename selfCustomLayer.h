//
//  selfCustomLayer.h
//  454
//
//  Created by liuping on 2016/12/7.
//  Copyright © 2016年 liuping. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
@interface selfCustomLayer : UIView


@property (nonatomic, assign) CGFloat count;

@property (nonatomic, strong) UIColor *taskColor;// 后面点的颜色；
//
@property (nonatomic, strong) UIColor *processColor;// 实际进程点的颜色

@property (nonatomic, assign) CGFloat width;

@property (nonatomic, assign) CGFloat height;



@end

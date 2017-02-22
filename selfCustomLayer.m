//
//  selfCustomLayer.m
//  454
//
//  Created by liuping on 2016/12/7.
//  Copyright © 2016年 liuping. All rights reserved.
//

#import "selfCustomLayer.h"
#define PI 3.14159265358979323846
#define DEGREES_TO_RADIANS(angle) ((angle) / 180.0 * M_PI)

@implementation selfCustomLayer




- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {

    }
    return self;
}

- (void)drawRect:(CGRect)rect
{

    const CGFloat *components = CGColorGetComponents(self.progressColor.CGColor);
    
    // 确认中心点
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGFloat centX = CGRectGetMidX(self.bounds);
    CGFloat centY = CGRectGetMidY(self.bounds);
    CGContextTranslateCTM(context, centX, centY);
    
    for (int i = 0; i < 36; i ++) {
                
        CGContextSetRGBFillColor (context,  204/255.0, 204/255.0, 204/255.0, 1.0);//设置填充颜色
        //画椭圆
        CGContextAddEllipseInRect(context, CGRectMake(0, -((self.frame.size.height / 2) - 5) , self.width, self.height)); //椭圆
        CGContextDrawPath(context, kCGPathFill);// 开始绘制
       
        CGContextSaveGState(context);// 保存上下文
        CGContextRotateCTM(context, DEGREES_TO_RADIANS(10));// 旋转角度

    }
    
    for (int i = 0; i < self.count; i ++) {
        
        CGContextSetRGBFillColor (context,  components[0], components[1], components[2], 1.0);//设置填充颜色
        //画椭圆
        CGContextAddEllipseInRect(context, CGRectMake(0, -((self.frame.size.height / 2) - 5), self.width, self.height)); //椭圆
        CGContextDrawPath(context, kCGPathFill);// 开始绘制
        
        CGContextSaveGState(context);// 保存上下文
        CGContextRotateCTM(context, DEGREES_TO_RADIANS(10));// 旋转角度
        
    }
    
    
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end

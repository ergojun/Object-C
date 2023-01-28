//
//  Circle.m
//  day3-OC
//
//  Created by TJ1998 on 2022/10/8.
//

#import "Circle.h"
#define PI 3.1415926   // 定义圆周率常数
@interface Circle()   //声明扩展
@property (nonatomic, readwrite) double radius;
@property (nonatomic, readwrite) double area;

// 声明扩展方法
-(void) calculateArea;
@end

@implementation Circle
-(void)calculateArea
{
    // 在实现文件内部。area属性为readwrite型属性，所以可以赋值
    self.area = PI * self.radius * self.radius;
}

-(void) makeCircle:(double)r
{
    self.radius = r;
    [self calculateArea];  // 调用在实现文件中声明及定义的calculateArea方法 
}
@end

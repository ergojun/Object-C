//
//  Person.m
//  Day2-OC
//
//  Created by TJ1998 on 2022/9/20.
//

#import "Person.h"

@implementation Person

- (void)setAge:(int)age
{
//  self 关键字用来防止局部变量覆盖成员变量
    self->age = age;
}

- (int)age
{
    return self->age;
}

- (void)test
{
    int _age = 20;
    NSLog(@"person 的年龄是%d",self->age);
}

@end

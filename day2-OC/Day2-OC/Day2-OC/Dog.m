//
//  Dog.m
//  Day2-OC
//
//  Created by TJ1998 on 2022/9/21.
//

#import "Dog.h"

@implementation Dog
- (void)bark
{
    NSLog(@"狗汪汪叫");
}

- (void)run
{
//    self 调用方法
    [self bark];
    NSLog(@"跑狗");
}
@end

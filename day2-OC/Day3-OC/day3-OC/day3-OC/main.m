//
//  main.m
//  day3-OC
//
//  Created by TJ1998 on 2022/9/19.
//

#import <Foundation/Foundation.h>
#import "Circle.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Circle *c = [[Circle alloc] init];
        [c makeCircle:1];
        NSLog(@"圆的面积为：%lf",c.area);
    }
    return 0;
}

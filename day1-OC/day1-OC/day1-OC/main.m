//
//  main.m
//  day1-OC
//
//  Created by TJ1998 on 2022/9/9.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Car.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        Student *stu = [[Student alloc] init];
        double a1 = [stu pi];
        NSLog(@"pi的值为%f",a1);
        
        
        Car *c = [[Car alloc] init];
        
        c->price = 8000.0;      // 赋值给 price 对象
        c->wheel = 4;           // 赋值给 wheel 对象
        [c run];                // 调用 run 方法
        return 0;
        
    }
    return 0;


}

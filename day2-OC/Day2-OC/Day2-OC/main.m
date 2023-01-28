//
//  main.m
//  Day2-OC
//
//  Created by TJ1998 on 2022/9/16.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Dog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [[Person alloc] init];
        
        
        [p setAge: 10];
        
        [p test];
        
        
//        self 调用方法
        Dog *d = [[Dog alloc] init];
        [d run];
        
        NSLog(@"Hello, World!");
    }
    return 0;
}

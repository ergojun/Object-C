//
//  main.h
//  day1-OC
//
//  Created by TJ1998 on 2022/9/15.
//

#import <Foundation/Foundation.h>
#import "Dog.h"

int main(int argc, const char *argv[])
{
    @autoreleasepool {
        Dog *d = [[Dog alloc] init];
        d->age=2;
        [d shout];
        [d print];
    }
    return 0;
}


//
//  Car.h
//  day1-OC
//
//  Created by TJ1998 on 2022/9/13.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Car : NSObject
{
    @public     // 添加 public 关键字让定义的属性可以被外界访问
    float price;
    int wheel;
}

-(void) run;
@end

NS_ASSUME_NONNULL_END

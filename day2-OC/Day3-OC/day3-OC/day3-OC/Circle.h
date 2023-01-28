//
//  Circle.h
//  day3-OC
//
//  Created by TJ1998 on 2022/10/8.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Circle : NSObject
-(void) makeCircle:(double)r;
@property (nonatomic,readonly) double radius;
@property (nonatomic,readonly) double area;
@end

NS_ASSUME_NONNULL_END

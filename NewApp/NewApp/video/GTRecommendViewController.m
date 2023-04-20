//
//  GTRecommendViewController.m
//  NewApp
//
//  Created by TJ1998 on 2023/4/19.
//

#import "GTRecommendViewController.h"

@interface GTRecommendViewController ()

@end

@implementation GTRecommendViewController

// 初始化方法
- (instancetype) init{
    self = [super init];
    if (self){
        self.tabBarItem.title = @"视频";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // 修改一下背景色
    self.view.backgroundColor = [UIColor yellowColor];
    
    // 创建 UIScrollView
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    scrollView.backgroundColor = [UIColor brownColor];
    
    // 设置滚动屏的大小
    scrollView.contentSize = CGSizeMake(self.view.bounds.size.width * 5, self.view.bounds.size.height);
    
    // 滚动框的实现
    // 定义一个颜色数组
    NSArray *colorArray = @[[UIColor redColor],[UIColor blueColor],[UIColor yellowColor],[UIColor blackColor],[UIColor grayColor]];
    
    // 在滚动框里循环生成
    for (int i = 0; i < 5; i++) {
        [scrollView addSubview:({
            // 生成 view
            UIView *view = [[UIView alloc] initWithFrame:CGRectMake(scrollView.bounds.size.width * i, 0, scrollView.bounds.size.width, scrollView.bounds.size.height)];
            view.backgroundColor = [colorArray objectAtIndex:i];
            view;
        })];
    }
    // 翻页效果
    //scrollView.pagingEnabled = YES;
    [self.view addSubview:scrollView];
}



@end

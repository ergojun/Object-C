//
//  GTRecommendViewController.m
//  NewApp
//
//  Created by TJ1998 on 2023/4/19.
//

#import "GTRecommendViewController.h"

// 加上 delegate 的声明
@interface GTRecommendViewController ()<UIScrollViewDelegate,UIGestureRecognizerDelegate>

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
    
    // 设置 delegate
    scrollView.delegate = self;
    
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
            
            // 创建一小块屏幕
            [view addSubview:({
                UIView *view = [[UIView alloc] initWithFrame:CGRectMake(300, 200, 50, 50)];
                view.backgroundColor = [UIColor yellowColor];
                // 设置手势监听 self 指当前类
                UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewClick)];
                // 将这个手势识别加入 view 中
                [view addGestureRecognizer:tapGesture];
                // 设置这个手势监听的 delegate
                tapGesture.delegate = self;
                view;
            })];
            
            view.backgroundColor = [colorArray objectAtIndex:i];
            view;
        })];
    }
    // 翻页效果
    //scrollView.pagingEnabled = YES;
    [self.view addSubview:scrollView];
}

// 滚动的时候都会回调到这个 delegate
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    // 获取水平方向的 contentOfSet
    //NSLog(@"scrollViewDidScroll - %@",@(scrollView.contentOffset.x));
}


- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    // 开始拖拽
    NSLog(@"BeginDragging");
}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    // 结束拖拽
    NSLog(@"EndDragging");
}
- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView{
    // 减速拖拽
    NSLog(@"减速减速减速");
}
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    // 停止减速
    NSLog(@"停止减速");
}

// 小屏幕点击事件触发的函数
- (void)viewClick{
    NSLog(@"小屏幕被点击");
}

// 手势监听 delegate 示例
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer{
    // NO 是监听不生效
    return YES;
}
@end

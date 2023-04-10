//
//  GTRecommendViewController.m
//  SampleApp
//
//  Created by TJ1998 on 2023/2/12.
//

#import "GTRecommendViewController.h"

@interface GTRecommendViewController ()

@end

@implementation GTRecommendViewController

- (instancetype) init{
    if (self) {

        self.tabBarItem.title = @"发现";
        self.tabBarItem.image = [UIImage imageNamed:@"nav_table.png"];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    // 13.1 创建 scrollview  大小为屏幕大小
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    // 13.1.1 设置颜色为灰色
    scrollView.backgroundColor = [UIColor lightGrayColor];
    // 13.1.3 设置内容区大小,宽度设为 5倍，高度设为原来高度
    scrollView.contentSize = CGSizeMake(self.view.bounds.size.width * 5, self.view.bounds.size.height);
    
    // 13.2.2 定义一个颜色数组
    NSArray * colorArry = @[[UIColor redColor],[UIColor yellowColor],[UIColor purpleColor],[UIColor blueColor],[UIColor grayColor]];
    
    // 13.2.1 在 scrollview 上添加几个页面
    for (int i = 0; i < 5; i++) {
        [scrollView addSubview:({
            UIView *view = [[UIView alloc] initWithFrame:CGRectMake(scrollView.bounds.size.width * i, 0,scrollView.bounds.size.width, scrollView.bounds.size.height)];
            // 13.2.3 设置滚动页面的颜色
            view.backgroundColor = [colorArry objectAtIndex:i];
            view;
        })];
    }
    
    
    // 13.2 设置翻页
    scrollView.pagingEnabled = YES;
    
    // 13.1.4 设置可以水平滚动
    scrollView.showsHorizontalScrollIndicator = YES;
    // 13.1.2 添加到屏幕中
    [self.view addSubview:scrollView];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

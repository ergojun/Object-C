//
//  ViewController.m
//  NewApp
//
//  Created by TJ1998 on 2023/3/29.
//

#import "ViewController.h"


// 1、创建一个测试 View，用来展示 View 的生命周期
@interface TestView : UIView

@end

@implementation TestView

// 2、创建一个初始化函数，重载 UIView 的 init 方法
- (instancetype)init{
    self = [super init];
    if (self){
        
    }
    return self;
}

- (void)willMoveToSuperview:(nullable UIView *)newSuperview{
    [super willMoveToSuperview:newSuperview];
}
- (void)didMoveToSuperview{
    [super didMoveToSuperview];
}
- (void)willMoveToWindow:(nullable UIWindow *)newWindow{
    [super willMoveToWindow:newWindow];
}
- (void)didMoveToWindow{
    [super didMoveToWindow];
}

@end

@interface ViewController ()<UITableViewDataSource>

@end

@implementation ViewController

// 重载 UIViewController 的 init 函数
- (instancetype)init {
    self = [super init];
    if(self){
        
    }
    return self;
}

// viewController 生命周期函数
- (void)viewWillAppear:(BOOL)animated{
    NSLog(@"viewWillAppear");
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated{
    NSLog(@"viewDidAppear");
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated{
    NSLog(@"viewWillDisappear");
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated{
    NSLog(@"viewDidDisappear");
    [super viewDidDisappear:animated];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // 创建 tableView
    // 先设置背景色
    self.view.backgroundColor = [UIColor greenColor];
    
    // 设置成当前页面的大小
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    // 通过 delegate 设计模式实现 datasource
    tableView.dataSource = self;
    [self.view addSubview:tableView];
 
}

// 返回这个 tableview 有多少个 cell
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20;
}

// 每个 cell 长什么样子
// stye 有 4 种样式，Default、subtitle、value1、value2
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"id"];
    // 设置主标题，副标题
    cell.textLabel.text = @"主标题";
    cell.detailTextLabel.text = @"副标题";
    return cell;
}
    
@end


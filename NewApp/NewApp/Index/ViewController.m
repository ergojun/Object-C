//
//  ViewController.m
//  NewApp
//
//  Created by TJ1998 on 2023/3/29.
//

#import "ViewController.h"
#import "TableViewCell.h"



@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation ViewController

// 重载 UIViewController 的 init 函数
- (instancetype)init {
    self = [super init];
    if(self){
        
    }
    return self;
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
    tableView.delegate = self;
    [self.view addSubview:tableView];
 
}


// 设置 cell 的高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}

// 点击一行时触发的效果
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSLog(@"lalalall");
    UIViewController *controller = [[UIViewController alloc] init];
    controller.title = [NSString stringWithFormat:@"%@", @(indexPath.row)];
    [self.navigationController pushViewController:controller animated:YES];
}

// 返回这个 tableview 有多少个 cell
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20;
}

// 每个 cell 长什么样子
// stye 有 4 种样式，Default、subtitle、value1、value2
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    TableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"id"];
    if (!cell) {
        // 如果没取到则新建一个cell
        cell = [[TableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"id"];
    }
    
    // 暴露这个方法，等每次运行的时候就运行这个方法
    [cell layoutTableViewCell];
    
    return cell;
}
    
@end


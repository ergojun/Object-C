//
//  ViewController.m
//  SampleApp
//
//  Created by TJ1998 on 2023/1/28.
//

#import "ViewController.h"
#import "GTNormalTableViewCell.h"


// 9.2.2 声明 datascoure
// 10.1.1 声明 delegate
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation ViewController

// 4. 写 uiview 生命周期
// 4.1 重载 uiviewcontroller 函数
- (instancetype)init{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // 1.显示 hello world
//    [self.view addSubview:({
//            UILabel *label = [[UILabel alloc] init];
//            label.text = @"hello world";
//            // 1.1 设置文本大小
//            [label sizeToFit];
//            // 1.2 居中显示
//            label.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
//            label;
//    })];
    
    // 9.1 创建uitableview
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    // 9.2 设置 tableview 的 datasource, 意思是用这个类来实现自定义方法。
    tableView.dataSource = self;
    // 10.1 将 tableview cell 的 delegate = self
    tableView.delegate = self;
    // 9.1.1 将 tableview 加入视图
    [self.view addSubview:tableView];
    


    // 9. 列表注释
//
//        // 2.创建 view
//        // 2.1 创建 uiview
//        UIView *view = [[UIView alloc] init];
//        // 2.2 设置属性
//        view.backgroundColor = [UIColor greenColor];
//        // 2.2.1  分别对应距离左上角的距离，以及view的长宽
//        view.frame = CGRectMake(100, 100, 100, 100);
//        // 2.3 把这个view 放到父 view 中
//        // 如果有多个 view ，写在这个view下面的就会显示到最上层
//        [self.view addSubview:view];
//
//        // 6.2 增加 navigationbar 的左右两边的内容
//        UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pushController)];
//        [view addGestureRecognizer:tapGesture];
    
    
}

// 10.3 每行的高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}

// 10. 每行的操作
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UIViewController *controller = [[UIViewController alloc] init];
    controller.title = [NSString stringWithFormat:@"%@", @(indexPath.row)];
    [self.navigationController pushViewController:controller animated:YES];
}


// 9.3 实现 tableview call
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    // 有 20 行
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    // 设置 cell
   // UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"id"];
    
    
    // 9.4 设置滚动 复用 cell
    GTNormalTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"id"];
    if(!cell) {
        cell = [[GTNormalTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"id"];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"主标题 - %@",@(indexPath.row)];
    cell.detailTextLabel.text = @"副标题";
    
    [cell layoutTableViewCell];
    
    return cell;
}


@end

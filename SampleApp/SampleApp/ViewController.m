//
//  ViewController.m
//  SampleApp
//
//  Created by TJ1998 on 2023/1/28.
//

#import "ViewController.h"

// 3. 创建 testview
@interface TestView : UIView

@end

@implementation TestView

// 3.2 创建重载函数，重载包含生命周期的方法 view 方法
- (instancetype)init{
    self = [super init];
    if (self) {
        
    }
    return self;
}

// 3.1 view 生命周期
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

@interface ViewController ()

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

// 4.2 生命周期函数
- (void)viewWillAppear:(BOOL)animated{
    // 4.2.1 重写方法
    [super viewWillAppear:animated];
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
}
- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // 1.显示 hello world
    [self.view addSubview:({
            UILabel *label = [[UILabel alloc] init];
            label.text = @"hello world";
            // 1.1 设置文本大小
            [label sizeToFit];
            // 1.2 居中显示
            label.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
            label;
    })];

    
    // 2.创建 view
    // 2.1 创建 uiview
    UIView *view = [[UIView alloc] init];
    // 2.2 设置属性
    view.backgroundColor = [UIColor greenColor];
    // 2.2.1  分别对应距离左上角的距离，以及view的长宽
    view.frame = CGRectMake(100, 100, 100, 100);
    // 2.3 把这个view 放到父 view 中
    // 如果有多个 view ，写在这个view下面的就会显示到最上层
    [self.view addSubview:view];
    
    // 6.2 增加 navigationbar 的左右两边的内容
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pushController)];
    [view addGestureRecognizer:tapGesture];
    
    
}

// 6.2.1
- (void)pushController{
    UIViewController *viewController = [[UIViewController alloc] init];
    viewController.view.backgroundColor = [UIColor whiteColor];
    viewController.navigationItem.title = @"内容";
    
    viewController.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"右侧标题" style:UIBarButtonItemStylePlain target:self action:nil];
    
    [self.navigationController pushViewController:viewController animated:YES];
}


@end

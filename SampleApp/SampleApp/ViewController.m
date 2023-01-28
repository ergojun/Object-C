//
//  ViewController.m
//  SampleApp
//
//  Created by TJ1998 on 2023/1/28.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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
    view.backgroundColor = [UIColor grayColor];
    // 2.2.1  分别对应距离左上角的距离，以及view的长宽
    view.frame = CGRectMake(100, 100, 100, 100);
    // 2.3 把这个view 放到父 view 中
    // 如果有多个 view ，写在这个view下面的就会显示到最上层
    [self.view addSubview:view];
    
}


@end

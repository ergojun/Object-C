//
//  AppDelegate.m
//  SampleApp
//
//  Created by TJ1998 on 2023/1/28.
//

#import "AppDelegate.h"
#import "ViewController.h"

// 8.1 声明一下delegete 协议
@interface AppDelegate ()<UITabBarControllerDelegate>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // 5. 创建 uitabbarcontroller
    UITabBarController *tabbarController = [[UITabBarController alloc] init];
    
    // 6.1.1 将 viewController 引入
    ViewController *viewController = [[ViewController alloc] init];
    

    // 6.1 将 viewcontroller 替换成 navigationcontroller
    
    // 7. 修改显示层级，将 navigationController 移到最下方，然后将controller1 换成 viewController
    // 5.2 将 uitabbarcontroller 包含的 viewcontroller 创建出来
    UIViewController *controller1 = [[UIViewController alloc] init];
    viewController.view.backgroundColor = [UIColor grayColor];
    viewController.tabBarItem.title = @"新闻";
    viewController.tabBarItem.image = [UIImage imageNamed:@"nav_book.png"];
    
    UIViewController *controller2 = [[UIViewController alloc] init];
    controller2.view.backgroundColor = [UIColor greenColor];
    controller2.tabBarItem.title = @"视频";
    controller2.tabBarItem.image = [UIImage imageNamed:@"nav_setting.png"];
    
    UIViewController *controller3 = [[UIViewController alloc] init];
    controller3.view.backgroundColor = [UIColor redColor];
    controller3.tabBarItem.title = @"发现";
    controller3.tabBarItem.image = [UIImage imageNamed:@"nav_table.png"];
    
    UIViewController *controller4 = [[UIViewController alloc] init];
    controller4.view.backgroundColor = [UIColor blueColor];
    controller4.tabBarItem.title = @"我的";
    controller4.tabBarItem.image = [UIImage imageNamed:@"nav_index.png"];
    
    // 5.3 将生成的 viewcontroller 写入 tabbarcontroller 中
    [tabbarController setViewControllers:@[viewController,controller2,controller3,controller4]];
    
    // 7.1 将 navigationcontroller 最低成的容器 换成 tabbarController
    // 6. 创建 navigationController
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:tabbarController
    ];
    
    // 8. delegete 设计模式，先设置 tabbarcontroller 的 delegete
    tabbarController.delegate = self;
 
    // 5.1 将原来创建的单一页面换成 tabbarcontroller
    self.window.rootViewController = navigationController;
    [self.window makeKeyAndVisible];
    
    return YES;
}

// 8.3 实现 didselectviewcontroller 方法
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController{
    // 8.3.1 输出log
    NSLog(@"did select");
}



@end

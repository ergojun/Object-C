//
//  AppDelegate.m
//  NewApp
//
//  Created by TJ1998 on 2023/3/29.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "GTVideoControllerViewController.h"

@interface AppDelegate ()<UITabBarControllerDelegate>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // 创建 UITabbarController
    UITabBarController * tabbarController = [[UITabBarController alloc] init];
    
    
    ViewController *viewController = [[ViewController alloc] init];
    
    
    // viewController.view.backgroundColor = [UIColor whiteColor];
    // 设置 tabbarItem 的名字
    viewController.tabBarItem.title = @"首页";
    
    // UICollectionView 的示例
    GTVideoControllerViewController *videoController = [[GTVideoControllerViewController alloc] init];

    
    UIViewController *controller3 = [[UIViewController alloc] init];
    controller3.view.backgroundColor = [UIColor yellowColor];
    controller3.tabBarItem.title = @"视频";
    
    UIViewController *controller4 = [[UIViewController alloc] init];
    controller4.view.backgroundColor = [UIColor greenColor];
    controller4.tabBarItem.title = @"我的";
    
    // 将 4 个 controller 视图加入 tabbarController 中,也可以控制页面顺序
    [tabbarController setViewControllers:@[viewController,videoController,controller3,controller4]];
    
    
    // 设置 tabbarController 的 delegate,需要在头部声明
    tabbarController.delegate = self;
    
    
    // 设置底层容器为 tabbarController
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:tabbarController];
    navigationController.view.backgroundColor = [UIColor whiteColor];
    
    // 将单一页面的 controller 换成 tabbarController
    self.window.rootViewController = navigationController;
    [self.window makeKeyAndVisible];
    
    
    
    return YES;
}

// 实现 delegate
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController{
    NSLog(@"did select tabbarItem ");
}

@end

//
//  GTWebViewController.m
//  NewApp
//
//  Created by TJ1998 on 2023/4/23.
//

#import "GTWebViewController.h"
#import <WebKit/WebKit.h>

@interface GTWebViewController ()<WKNavigationDelegate>
// 定义一个 webView
@property(nonatomic, strong, readwrite) WKWebView *webView;
// 创建一个进度条
@property(nonatomic, strong, readwrite) UIProgressView *progressView;

@end

@implementation GTWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 进度条
    [self.view addSubview:({
            self.progressView = [[UIProgressView alloc] initWithFrame:CGRectMake(0, 88, self.view.frame.size.width, 20)];
            self.progressView;
    })];
    
    [self.view addSubview:({
        self.webView = [[WKWebView alloc] initWithFrame:CGRectMake(0, 88, self.view.frame.size.width, self.view.frame.size.height - 88)];
        self.webView.navigationDelegate = self;
        self.webView;
    })];
    
    // load 一个请求
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://time.geekbang.org/"]]];
    
    // 创建一个 KVO 监听 ,监听者是 self，也就是webView ，监听对象是 estimatedProgress，当NSKeyValueObservingOptionNew 变化时
    [self.webView addObserver:self forKeyPath:@"estimatedProgress" options:NSKeyValueObservingOptionNew context:nil];
}

// 加载 request 前 询问是否加载 URL
- (void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler{
    // 设置允许
    decisionHandler(WKNavigationActionPolicyAllow);
}

// 加载 request 后
- (void)webView:(WKWebView *)webView didFinishNavigation:(null_unspecified WKNavigation *)navigation{
    NSLog(@"");
}

// 监听回调
- (void)observeValueForKeyPath:(nullable NSString *)keyPath ofObject:(nullable id)object change:(nullable NSDictionary<NSKeyValueChangeKey, id> *)change context:(nullable void *)context{
    
    // 设置进度条的值
    self.progressView.progress = self.webView.estimatedProgress;
    NSLog(@"");
}

// 移除监听
- (void)dealloc{
    [self.webView removeObserver:self forKeyPath:@"estimatedProgress"];
}

@end

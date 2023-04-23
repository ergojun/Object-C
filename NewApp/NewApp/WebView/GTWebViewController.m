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

@end

@implementation GTWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self.view addSubview:({
        self.webView = [[WKWebView alloc] initWithFrame:CGRectMake(0, 88, self.view.frame.size.width, self.view.frame.size.height - 88)];
        self.webView.navigationDelegate = self;
        self.webView;
    })];
    
    // load 一个请求
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://time.geekbang.org/"]]];
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

@end

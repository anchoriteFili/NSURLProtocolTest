//
//  ViewController.m
//  NSURLProtocolTest
//
//  Created by zetafin on 2018/9/28.
//  Copyright © 2018年 赵宏亚. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIWebViewDelegate>

@property (nonatomic,strong) UIWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //    创建UIWebView
    UIWebView *webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, UIScreen.mainScreen.bounds.size.width, UIScreen.mainScreen.bounds.size.height)];
    //    设置申请项
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"http://www.baidu.com"]];
    
    /*
     @property(nonatomic) BOOL scalesPageToFit
     一个布尔值，用于决定webpage的尺寸是否适合屏幕和使
     用者能不能改变webpage的尺寸
     如果是yes，尺寸可以改变，用户可以放大或缩小页面
     如果是NO，用户是不能改变页面大小的
     */
    webView.scalesPageToFit = YES;
    
    webView.delegate = self;
    
    self.webView = webView;
    
    //    将申请的网络载入到webView中
    [webView loadRequest:request];
    [self.view addSubview:webView];
    
}

//页面的后退
- (void)backBtnClicked:(UIBarButtonItem *)btn
{
    if (_webView.canGoBack) {
        [_webView goBack];
    }
}

//页面的前进
- (void)forwardBtnClicked:(UIBarButtonItem *)btn
{
    if (_webView.canGoForward) {
        [_webView goForward];
    }
}





@end

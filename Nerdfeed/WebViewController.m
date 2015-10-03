//
//  WebViewController.m
//  Nerdfeed
//
//  Created by Joshua Motley on 10/2/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()
@property (nonatomic) NSURL *url;

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)loadView{
    
    
    UIWebView *webView = [[UIWebView alloc]init];
    webView.scalesPageToFit = YES;
    self.view = webView;
}

-(void)setUrl:(NSURL *)url{
    _url = url;
    
    if(_url){
        
        NSURLRequest *req = [NSURLRequest requestWithURL:_url];
        [(UIWebView *)self.view loadRequest:req];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

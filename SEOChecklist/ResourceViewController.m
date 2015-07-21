//
//  ResourceViewController.m
//  SEOChecklist
//
//  Created by Tyler Hunnefeld on 6/21/15.
//  Copyright (c) 2015 Tyler Hunnefeld. All rights reserved.
//

#import "ResourceViewController.h"

@implementation ResourceViewController
@synthesize webView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.webView.scalesPageToFit = YES;
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://searchengineland.com/guide/what-is-seo"]]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
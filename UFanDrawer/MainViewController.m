//
//  MainViewController.m
//  UFanDrawer
//
//  Created by 夏敏 on 15/8/21.
//  Copyright (c) 2015年 夏敏. All rights reserved.
//

#import "MainViewController.h"
#import "UIViewController+UFanViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"Main";
    self.view.backgroundColor = [UIColor whiteColor];
    [self setLeftBarButtonItem];
    // Do any additional setup after loading the view.
}

- (void)setLeftBarButtonItem{
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithTitle:@"Left" style:UIBarButtonItemStylePlain target:self action:@selector(leftAction)];
    self.navigationItem.leftBarButtonItem = item;
}

- (void)leftAction{
    [self.UF_ViewController triggerLeftDrawer];
}


@end

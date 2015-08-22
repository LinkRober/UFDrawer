//
//  firstItemViewController.m
//  UFanDrawer
//
//  Created by 夏敏 on 15/8/22.
//  Copyright (c) 2015年 夏敏. All rights reserved.
//

#import "firstItemViewController.h"

@implementation firstItemViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self setLeftBarButtonItem];
}

- (void)setLeftBarButtonItem{
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithTitle:@"back" style:UIBarButtonItemStylePlain target:self action:@selector(leftAction)];
    self.navigationItem.leftBarButtonItem = item;
}

- (void)leftAction{
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}

@end

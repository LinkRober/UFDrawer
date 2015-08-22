//
//  leftDrawerViewController.m
//  UFanDrawer
//
//  Created by 夏敏 on 15/8/21.
//  Copyright (c) 2015年 夏敏. All rights reserved.
//

#import "leftDrawerViewController.h"
#import "firstItemViewController.h"
#import "UIViewController+UFanViewController.h"

@interface leftDrawerViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;

@property (nonatomic, strong) NSArray *items;

@end

@implementation leftDrawerViewController

-(void)loadView {
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height) style:UITableViewStyleGrouped];
    [self.tableView setDataSource:self];
    [self.tableView setDelegate:self];
    self.view = self.tableView;
    self.view.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    self.items = @[@"item1",@"item2",@"item3"];
    // Do any additional setup after loading the view.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.items.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = (NSString *)self.items[indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [self.UF_ViewController closeDrawerAnimtaion:YES complete:^(BOOL finished) {
        firstItemViewController *firstVC = [[firstItemViewController alloc] init];
        firstVC.navigationItem.title = @"first";
        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:firstVC];
        [self.UF_ViewController.centerViewController presentViewController:nav animated:YES completion:nil];
    }];
}

@end

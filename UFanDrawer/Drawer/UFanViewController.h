//
//  UFanViewController.h
//  UFanDrawer
//
//  Created by 夏敏 on 15/8/21.
//  Copyright (c) 2015年 夏敏. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UFanViewController : UIViewController

@property (nonatomic, strong)  UIViewController *centerViewController;
@property (nonatomic, strong)  UIViewController *leftDrawerViewController;
@property (nonatomic, strong) UIViewController  *rightDrawerViewController;

//阴影
@property (nonatomic, assign)  BOOL showShadow;

-(instancetype)initWithCenterViewController:(UIViewController *)centerViewController leftDrawerViewController:(UIViewController *)leftDrawerViewController;

- (void)closeDrawerAnimtaion:(BOOL)animatied complete:(void(^)(BOOL finished))completion;

- (void)triggerLeftDrawer;

- (void)disMissLeftDrawer;

@end

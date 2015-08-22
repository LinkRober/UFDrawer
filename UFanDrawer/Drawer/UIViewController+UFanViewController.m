//
//  UIViewController+UFanViewController.m
//  UFanDrawer
//
//  Created by 夏敏 on 15/8/21.
//  Copyright (c) 2015年 夏敏. All rights reserved.
//

#import "UIViewController+UFanViewController.h"

@implementation UIViewController (UFanViewController)

-(UFanViewController *)UF_ViewController {
    
    UIViewController *parentViewController = self.parentViewController;
    while (parentViewController != nil) {
        if ([parentViewController isKindOfClass:[UFanViewController class]]) {
            return (UFanViewController *)parentViewController;
        }
        parentViewController = parentViewController.parentViewController;
    }
    return nil;
}

@end

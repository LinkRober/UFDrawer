//
//  DetailViewController.h
//  UFanDrawer
//
//  Created by 夏敏 on 15/8/21.
//  Copyright (c) 2015年 夏敏. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end


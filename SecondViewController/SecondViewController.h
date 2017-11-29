//
//  SecondViewController.h
//  Project
//
//  Created by Rick on 2017/11/22.
//  Copyright © 2017年 Rick. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UITableViewController



@property double breakfast_totoal;
@property double lunch_totoal;
@property double dinner_totoal;

@property (weak, nonatomic) IBOutlet UILabel *totalLabel;

@end

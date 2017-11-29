//
//  FoodViewController.h
//  Project
//
//  Created by Rick on 2017/11/26.
//  Copyright © 2017年 Rick. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FoodViewController : UITableViewController

@property NSString* meal;

-(void)setAmountValueWithSection:(NSInteger)section AndRow:(NSInteger)row WithValue:(NSInteger)value;

@property NSMutableArray *dataSource;
@property double totoal;

@property(nonatomic,strong) UITableView* tableView;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UIView *totalView;




@end

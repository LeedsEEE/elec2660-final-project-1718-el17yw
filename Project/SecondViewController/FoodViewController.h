//
//  FoodViewController.h
//  Project
//
//  Created by Rick on 2017/11/26.
//  Copyright © 2017年 Rick. All rights reserved.
//

#import <UIKit/UIKit.h>


//update
@interface FoodViewController : UIViewController

@property NSString* meal;

-(void)setAmountValueWithSection:(NSInteger)section AndRow:(NSInteger)row WithValue:(NSInteger)value;

@property NSMutableArray *dataSource; //array used to memorize data of food
@property double totoal; // total calorie of breakfast,lunch and dinner

@property(nonatomic,strong) UITableView* tableView;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UIView *totalView;

- (IBAction)clean:(id)sender;



@end

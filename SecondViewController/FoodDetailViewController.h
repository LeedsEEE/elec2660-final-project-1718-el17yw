//
//  FoodDetailViewController.h
//  Project
//
//  Created by Rick on 2017/11/26.
//  Copyright © 2017年 Rick. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FoodDetailViewController : UITableViewController

@property NSString* foodname;
@property NSString* groupname;
@property NSString* unit;
@property double cal;
@property NSInteger count;
@property NSInteger section;
@property NSInteger row;
@property NSInteger amount;


@property (weak, nonatomic) IBOutlet UILabel *foodNameLabel;
@property (weak, nonatomic) IBOutlet UITextView *describeTextView;
@property (weak, nonatomic) IBOutlet UILabel *valueLabel;


- (IBAction)add:(id)sender;
- (IBAction)minus:(id)sender;




@end

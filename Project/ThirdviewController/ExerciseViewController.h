//
//  ExerciseViewController.h
//  Project
//
//  Created by Rick on 2017/12/4.
//  Copyright © 2017年 Rick. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ExerciseViewController : UIViewController

@property NSString* exerciseType;

-(void)setAmountValueWithSection:(NSInteger)section AndRow:(NSInteger)row WithValue:(NSInteger)value;

@property NSMutableArray *dataSource;
@property double totoal;

@property(nonatomic,strong) UITableView* tableView;

//define the property of  bottom view
@property (weak, nonatomic) IBOutlet UIView *totalView;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

- (IBAction)clean:(id)sender;



@end

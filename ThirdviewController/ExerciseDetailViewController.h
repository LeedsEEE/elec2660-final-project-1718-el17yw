//
//  ExerciseDetailViewController.h
//  Project
//
//  Created by Rick on 2017/12/4.
//  Copyright © 2017年 Rick. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ExerciseDetailViewController : UITableViewController

@property NSString* exercisename;
@property NSString* groupname;
@property NSString* unit;
@property double cal;
@property NSInteger count;
@property NSInteger section;
@property NSInteger row;
@property NSInteger amount;

@property (weak, nonatomic) IBOutlet UILabel *exerciseNameLabel;
@property (weak, nonatomic) IBOutlet UITextView *describetextView;


@property (weak, nonatomic) IBOutlet UILabel *valueLabel;

- (IBAction)add:(id)sender;
- (IBAction)minus:(id)sender;

@end

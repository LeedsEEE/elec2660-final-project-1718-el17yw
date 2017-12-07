//
//  ExerciseDetailViewController.m
//  Project
//
//  Created by Rick on 2017/12/4.
//  Copyright © 2017年 Rick. All rights reserved.
//

#import "ExerciseDetailViewController.h"
#import "ExerciseViewController.h"


@interface ExerciseDetailViewController ()

@end

@implementation ExerciseDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.amount=self.count;
    self.valueLabel.text = [NSString stringWithFormat:@"%ld",self.amount];
    self.exerciseNameLabel.text = self.exercisename;
    self.describetextView.text = [NSString stringWithFormat:@"%.2f K cal/15mins",self.cal];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)add:(id)sender {
    self.amount = self.amount + 15;
    [self updateAmount];
}

- (IBAction)minus:(id)sender {
    if (self.amount-15 >= 0) {
        self.amount = self.amount - 15;
    }
    [self updateAmount];
}

-(void)updateAmount{
    ExerciseViewController* vc=(ExerciseViewController*)self.navigationController.viewControllers[self.navigationController.viewControllers.count-2];
    [vc setAmountValueWithSection:_section AndRow:_row WithValue:_amount];
    [self.valueLabel setText:[NSString stringWithFormat:@"%ld mins",_amount]];
}
@end

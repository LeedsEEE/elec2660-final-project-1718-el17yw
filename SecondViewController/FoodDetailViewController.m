//
//  FoodDetailViewController.m
//  Project
//
//  Created by Rick on 2017/11/26.
//  Copyright © 2017年 Rick. All rights reserved.
//

#import "FoodDetailViewController.h"
#import "FoodViewController.h"

@interface FoodDetailViewController ()

@end

@implementation FoodDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.amount=self.count;
    self.valueLabel.text = [NSString stringWithFormat:@"%ld",self.amount];
    self.foodNameLabel.text = self.foodname;
    self.describeTextView.text = [NSString stringWithFormat:@"%.2f K cal/%@",self.cal,self.unit];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (IBAction)add:(id)sender {
    if (self.amount-1 >= 0) {
        self.amount = self.amount - 1;
    }
    [self updateAmount];
}

- (IBAction)minus:(id)sender {
    if (self.amount-1 >= 0) {
        self.amount = self.amount - 1;
    }
    [self updateAmount];
}

-(void)updateAmount{
    FoodViewController* vc=(FoodViewController*)self.navigationController.viewControllers[self.navigationController.viewControllers.count-2];
    [vc setAmountValueWithSection:_section AndRow:_row WithValue:_amount];
    [self.valueLabel setText:[NSString stringWithFormat:@"%ld",_amount]];
}



@end

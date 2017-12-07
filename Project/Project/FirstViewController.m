//
//  ViewController.m
//  Project
//
//  Created by Rick on 2017/11/7.
//  Copyright © 2017年 Rick. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (IBAction)ageSlider:(UISlider *)sender {
    self.age=(int)([(UISlider*)sender value]);
    self.ageLabel.text = [NSString stringWithFormat:@"Your age is:%.0f years old",sender.value];
}

- (IBAction)heightSlider:(UISlider *)sender {
    self.weight=[(UISlider*)sender value];
    self.heightLabel.text = [NSString stringWithFormat:@"Your height is:%.2f cm",sender.value];
}

- (IBAction)weightSlider:(UISlider *)sender {
    self.height=[(UISlider*)sender value];
    self.weightLabel.text = [NSString stringWithFormat:@"Your weight is:%.2f kg",sender.value];
}

- (IBAction)pressButton:(UIButton *)sender {
    if (self.genderSeg.selectedSegmentIndex==0) {
        self.bmr=66.47+ (13.75 * self.weight) + (5.0 * self.height) - (6.75 * self.age);
    } else {
        self.bmr=665.09 + (9.56 * self.weight) + (1.84 * self.height) - (4.67 * self.age);
    }
    
    self.calorieLabel.text =[NSString stringWithFormat:@"Suggested calorie intake :%.1f kcal",self.bmr];
}
@end

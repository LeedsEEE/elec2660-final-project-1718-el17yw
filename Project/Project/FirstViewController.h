//
//  ViewController.h
//  Project
//
//  Created by Rick on 2017/11/7.
//  Copyright © 2017年 Rick. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISegmentedControl *genderSeg;
- (IBAction)ageSlider:(UISlider *)sender;
- (IBAction)heightSlider:(UISlider *)sender;
- (IBAction)weightSlider:(UISlider *)sender;
- (IBAction)pressButton:(UIButton *)sender;


@property (weak, nonatomic) IBOutlet UILabel *ageLabel;
@property (weak, nonatomic) IBOutlet UILabel *heightLabel;
@property (weak, nonatomic) IBOutlet UILabel *weightLabel;
@property (weak, nonatomic) IBOutlet UILabel *calorieLabel;


@property NSInteger age;
@property double weight;
@property double height;
@property double bmr;
@end


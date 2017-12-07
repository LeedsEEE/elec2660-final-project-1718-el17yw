//
//  SecondViewController.h
//  Project
//
//  Created by Rick on 2017/11/22.
//  Copyright © 2017年 Rick. All rights reserved.
//

#import <UIKit/UIKit.h>

//update
@interface SecondViewController : UIViewController

@property double breakfast_totoal;
@property double lunch_totoal;
@property double dinner_totoal;

@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
- (IBAction)clean:(id)sender;

@end

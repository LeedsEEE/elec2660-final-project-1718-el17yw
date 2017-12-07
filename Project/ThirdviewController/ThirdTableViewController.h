//
//  ThirdTableViewController.h
//  Project
//
//  Created by Rick on 2017/12/4.
//  Copyright © 2017年 Rick. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThirdTableViewController : UIViewController

@property double lifestyleSports_totoal;
@property double competitiveSports_totoal;

@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
- (IBAction)clean:(id)sender;

@end

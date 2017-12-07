//
//  SecondViewController.m
//  project ver 1
//
//  Created by Rick on 2017/11/19.
//  Copyright © 2017年 Rick. All rights reserved.
//



#import "SecondViewController.h"
#import "FoodViewController.h"
@interface SecondViewController ()
//@property (weak, nonatomic) IBOutlet UILabel *totoalLabel;


@end

@implementation SecondViewController

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.totalLabel setText:[NSString stringWithFormat:@"%.2fK",self.breakfast_totoal+self.lunch_totoal+self.dinner_totoal]];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    FoodViewController *destinationViewController = [segue destinationViewController];
    if ([[segue identifier] isEqualToString:@"breakfast"]){
        destinationViewController.meal=@"breakfast";
    }else if ([[segue identifier] isEqualToString:@"lunch"]){
        destinationViewController.meal=@"lunch";
    }else if ([[segue identifier] isEqualToString:@"dinner"]){
        destinationViewController.meal=@"dinner";
    }
}

//clean all the data
- (IBAction)clean:(id)sender {
    self.breakfast_totoal=0;
    self.lunch_totoal=0;
    self.dinner_totoal=0;
    [self.totalLabel setText:[NSString stringWithFormat:@"%.2fK",self.breakfast_totoal+self.lunch_totoal+self.dinner_totoal]];
}
@end


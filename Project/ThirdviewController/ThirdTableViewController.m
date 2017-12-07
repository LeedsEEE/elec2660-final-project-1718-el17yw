//
//  ThirdTableViewController.m
//  Project
//
//  Created by Rick on 2017/12/4.
//  Copyright © 2017年 Rick. All rights reserved.
//

#import "ThirdTableViewController.h"
#import "ExerciseViewController.h"
@interface ThirdTableViewController ()

@end

@implementation ThirdTableViewController

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.totalLabel setText:[NSString stringWithFormat:@"%.2fK",self.lifestyleSports_totoal+self.competitiveSports_totoal]];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
  
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    ExerciseViewController *destinationViewController = [segue destinationViewController];
    if ([[segue identifier] isEqualToString:@"lifestyleSports"]){
        destinationViewController.exerciseType=@"lifestyleSports";
    }else if ([[segue identifier] isEqualToString:@"competitiveSports"]){
        destinationViewController.exerciseType=@"competitiveSports";
    }
}

- (IBAction)clean:(id)sender {
    self.lifestyleSports_totoal=0;
    self.competitiveSports_totoal=0;
    [self.totalLabel setText:[NSString stringWithFormat:@"%.2fK",self.lifestyleSports_totoal+self.competitiveSports_totoal]];
    
}
@end

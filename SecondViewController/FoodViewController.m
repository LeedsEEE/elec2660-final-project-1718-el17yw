//
//  FoodViewController.m
//  Project
//
//  Created by Rick on 2017/11/26.
//  Copyright © 2017年 Rick. All rights reserved.
//

#import "FoodViewController.h"
#import "FoodDetailViewController.h"
#import "SecondViewController.h"
#import "dataModule.h"
@interface FoodViewController ()

@end

@implementation FoodViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dataSource=[[NSMutableArray alloc] init];
    
    if ([self.meal isEqualToString:@"breakfast"]) {
        self.dataSource=[[dataModule alloc]  init].breakfast;
        self.titleLabel.text=@"Breakfast Totoal Calorie";
    } else if([self.meal isEqualToString:@"lunch"]){
        self.dataSource=[[dataModule alloc] init].lunch;
        self.titleLabel.text=@"Lunch Totoal Calorie";
    } else if([self.meal isEqualToString:@"dinner"]){
        self.dataSource=[[dataModule alloc] init].lunch;
        self.titleLabel.text=@"Dinner Totoal Calorie";
    }
    
    
    
    self.tableView=[[UITableView alloc] init];
    self.tableView.delegate=self;
    self.tableView.dataSource=self;
    
    
    [self.view addSubview:self.tableView];
    [self.view sendSubviewToBack:self.tableView];
    [self.tableView setFrame:[[UIScreen mainScreen] bounds]];
    [self.tableView registerClass:[UITableViewCell class]
           forCellReuseIdentifier:@"foodcell"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return self.dataSource.count;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
     GroupModule* groupModule=self.dataSource[section];
     return groupModule.group.count;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    GroupModule* groupModule=self.dataSource[section];
    return groupModule.groupName;
}


-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.totoal=[self calcTotoalCalorie];
    self.totalLabel.text = [NSString stringWithFormat:@"%.2fK",self.totoal];
    
    SecondViewController* vc=(SecondViewController*)self.navigationController.viewControllers[self.navigationController.viewControllers.count-2];
    
    if([self.meal isEqualToString:@"breakfast"]){
        vc.breakfast_totoal=_totoal;
    }else if([self.meal isEqualToString:@"lunch"]){
        vc.lunch_totoal=_totoal;
    }else if([self.meal isEqualToString:@"dinner"]){
        vc.dinner_totoal=_totoal;
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView
        cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"foodcell"];
    
   
    GroupModule* group=(GroupModule*)self.dataSource[indexPath.section];
    FoodModule* food=(FoodModule*)(group.group[indexPath.row]);
    
   
    cell.textLabel.text=food.foodName;
    
    return cell;
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
}



-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
   
    
    UIStoryboard* storyboard=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    FoodDetailViewController* vc=[storyboard instantiateViewControllerWithIdentifier:@"fooddetail"];
    
    GroupModule* group=(GroupModule*)_dataSource[indexPath.section];
    FoodModule* food=(FoodModule*)(group.group[indexPath.row]);
    
   
    vc.foodname=food.foodName;
    vc.groupname=group.groupName;
    vc.unit=food.unit;
    vc.cal=food.cal;
    vc.count=food.amount;
    vc.section=indexPath.section;
    vc.row=indexPath.row;
    
    
    [self.navigationController pushViewController:vc animated:YES];
    
}


-(void)setAmountValueWithSection:(NSInteger)section AndRow:(NSInteger)row  WithValue:(NSInteger)value{
    GroupModule* group=(GroupModule*)_dataSource[section];
    FoodModule* food=(FoodModule*)(group.group[row]);
    food.amount=value;
}


-(double)calcTotoalCalorie{
    double totoal=0;
    for (GroupModule* gm in _dataSource) {
        for (FoodModule* fm in gm.group) {
            totoal+=fm.amount*fm.cal;
        }
    }
    return totoal;
}






@end

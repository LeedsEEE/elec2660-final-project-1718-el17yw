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
//update
@interface FoodViewController ()<UITableViewDelegate, UITableViewDataSource>

@end

@implementation FoodViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dataSource=[[NSMutableArray alloc] init];
    //according to  different meals to get data
    if ([self.meal isEqualToString:@"breakfast"]) {
        self.dataSource=[[dataModule alloc]  init].breakfast;  //let the value of breakfast to datasource
        self.titleLabel.text=@"Breakfast Totoal Calorie"; // value of bottom label
    } else if([self.meal isEqualToString:@"lunch"]){
        self.dataSource=[[dataModule alloc] init].lunch;
        self.titleLabel.text=@"Lunch Totoal Calorie";
    } else if([self.meal isEqualToString:@"dinner"]){
        self.dataSource=[[dataModule alloc] init].lunch;
        self.titleLabel.text=@"Dinner Totoal Calorie";
    }
    
    
    //initialize the table view
    self.tableView=[[UITableView alloc] init];
    self.tableView.delegate=self;
    self.tableView.dataSource=self;
    
    
    [self.view addSubview:self.tableView];
    [self.view sendSubviewToBack:self.tableView]; // add tableview to the bottom
    [self.tableView setFrame:[[UIScreen mainScreen] bounds]];  //set the frame
    [self.tableView registerClass:[UITableViewCell class]
           forCellReuseIdentifier:@"foodcell"]; //register ui table view cell
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// return how many sections
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return self.dataSource.count;
    
}
//return how many rows one section has
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
     GroupModule* groupModule=self.dataSource[section];
     return groupModule.group.count;
}
//define the title of every section
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    GroupModule* groupModule=self.dataSource[section];
    return groupModule.groupName;
}

//calculate current calorie, and send it to the previous page
//so that a total calotie of three meals can be gotten
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
   [tableView deselectRowAtIndexPath:indexPath animated:YES]; //after back, cancel shadow
    
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

// use for, to calculate the total calorie
-(double)calcTotoalCalorie{
    double totoal=0;
    for (GroupModule* gm in _dataSource) {
        for (FoodModule* fm in gm.group) {
            totoal+=fm.amount*fm.cal;
        }
    }
    return totoal;
}
//avoid bottom bar cannot been seen
-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    float bottomEdge = scrollView.contentOffset.y + scrollView.frame.size.height;
    if (bottomEdge >= scrollView.contentSize.height) {
        [UIView animateWithDuration:0.3 animations:^() {
            _totalView.alpha = 0.0;
        }];
    }else{
        [UIView animateWithDuration:0.3 animations:^() {
            _totalView.alpha = 1.0;
        }];
    }
}

- (IBAction)clean:(id)sender {
    for (GroupModule* gm in _dataSource) {
        for (FoodModule* fm in gm.group) {
            fm.amount=0;
        }
    }
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
@end

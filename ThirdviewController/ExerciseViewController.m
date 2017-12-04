//
//  ExerciseViewController.m
//  Project
//
//  Created by Rick on 2017/12/4.
//  Copyright © 2017年 Rick. All rights reserved.
//

#import "ExerciseViewController.h"
#import "ExerciseDetailViewController.h"
#import "ThirdTableViewController.h"
#import "ExerciseDataModel.h"
#import "GroupModule2.h"
@interface ExerciseViewController ()

@end

@implementation ExerciseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataSource=[[NSMutableArray alloc] init];
    
    if ([self.meal isEqualToString:@"aerobicExercises"]) {
        self.dataSource=[[ExerciseDataModel alloc]  init].aerobicExercises;
        self.titleLabel.text=@"Totoal Calorie of doing aerobic exercises";
    } else if([self.meal isEqualToString:@"anaerobicExercises"]){
        self.dataSource=[[ExerciseDataModel alloc] init].anaerobicExercises;
        self.titleLabel.text=@"Totoal Calorie of doing anaerobic exercises";
    }
    self.tableView=[[UITableView alloc] init];
    self.tableView.delegate=self;
    self.tableView.dataSource=self;
    
    [self.view addSubview:self.tableView];
    [self.view sendSubviewToBack:self.tableView];
    [self.tableView setFrame:[[UIScreen mainScreen] bounds]];
    [self.tableView registerClass:[UITableViewCell class]
           forCellReuseIdentifier:@"exercisecell"];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return self.dataSource.count;
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    GroupModule2* groupModule2=self.dataSource[section];
    return groupModule2.group.count;
}


-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    GroupModule2* groupModule2=self.dataSource[section];
    return groupModule2.groupName;
}


-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.totoal=[self calcTotoalCalorie];
    self.totalLabel.text = [NSString stringWithFormat:@"%.2fK",self.totoal];
    
   ThirdTableViewController* vc=(ThirdTableViewController*)self.navigationController.viewControllers[self.navigationController.viewControllers.count-2];
    
    if([self.meal isEqualToString:@"aerobicExercises"]){
        vc.aerobic_totoal=_totoal;
    }else if([self.meal isEqualToString:@"anaerobicExercises"]){
        vc.anaerobic_totoal=_totoal;
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView
        cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"foodcell"];
    
    
    GroupModule2* group=(GroupModule2*)self.dataSource[indexPath.section];
    ExerciseModule* exercise=(ExerciseModule*)(group.group[indexPath.row]);
    
    
    cell.textLabel.text=exercise.exerciseName;
    
    return cell;
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
}



-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    UIStoryboard* storyboard=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ExerciseDetailViewController* vc=[storyboard instantiateViewControllerWithIdentifier:@"exercisedetail"];
    
    GroupModule2* group=(GroupModule2*)_dataSource[indexPath.section];
    ExerciseModule* exercise=(ExerciseModule*)(group.group[indexPath.row]);
    
    
    vc.exercisename=exercise.exerciseName;
    vc.groupname=group.groupName;
    vc.cal=exercise.cal;
    vc.count=exercise.amount;
    vc.section=indexPath.section;
    vc.row=indexPath.row;
    
    
    [self.navigationController pushViewController:vc animated:YES];
    
}


-(void)setAmountValueWithSection:(NSInteger)section AndRow:(NSInteger)row  WithValue:(NSInteger)value{
    GroupModule2* group=(GroupModule2*)_dataSource[section];
    ExerciseModule* exercise=(ExerciseModule*)(group.group[row]);
    exercise.amount=value;
}


-(double)calcTotoalCalorie{
    double totoal=0;
    for (GroupModule2* gm in _dataSource) {
        for (ExerciseModule* fm in gm.group) {
            totoal+=fm.amount*fm.cal;
        }
    }
    return totoal;
}




















@end

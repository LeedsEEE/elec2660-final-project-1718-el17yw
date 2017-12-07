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

@interface ExerciseViewController ()<UITableViewDelegate, UITableViewDataSource>

@end

@implementation ExerciseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataSource=[[NSMutableArray alloc] init];
    
    if ([self.exerciseType isEqualToString:@"lifestyleSports"]) {
        self.dataSource=[[ExerciseDataModel alloc]  init].lifestyleSports;
        self.titleLabel.text=@"Totoal Calorie of doing lifestyle Sports";
    } else if([self.exerciseType isEqualToString:@"competitiveSports"]){
        self.dataSource=[[ExerciseDataModel alloc] init].competitiveSports;
        self.titleLabel.text=@"Totoal Calorie of doing competitive sports";
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
    return 1;
}


-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.totoal=[self calcTotoalCalorie];
    self.totalLabel.text = [NSString stringWithFormat:@"%.2fK",self.totoal];
    
   ThirdTableViewController* vc=(ThirdTableViewController*)self.navigationController.viewControllers[self.navigationController.viewControllers.count-2];
    
    if([self.exerciseType isEqualToString:@"lifestyleSports"]){
        vc.lifestyleSports_totoal=_totoal;
    }else if([self.exerciseType isEqualToString:@"competitiveSports"]){
        vc.competitiveSports_totoal=_totoal;
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView
        cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"exercisecell"];

    
    ExerciseModule* exercise=(ExerciseModule*)(self.dataSource[indexPath.section]);
    
    
    cell.textLabel.text=exercise.exerciseName;
    
    return cell;
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
}



-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    UIStoryboard* storyboard=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ExerciseDetailViewController* vc=[storyboard instantiateViewControllerWithIdentifier:@"exercisedetail"];
    
    ExerciseModule* exercise=(ExerciseModule*)(_dataSource[indexPath.section]);
    
    
    vc.exercisename=exercise.exerciseName;
    vc.cal=exercise.cal;
    vc.count=exercise.amount;
    vc.section=indexPath.section;
    vc.row=indexPath.row;
    
    
    [self.navigationController pushViewController:vc animated:YES];
    
}


-(void)setAmountValueWithSection:(NSInteger)section AndRow:(NSInteger)row  WithValue:(NSInteger)value{
    ExerciseModule* exercise=(ExerciseModule*)(_dataSource[section]);
    exercise.amount=value;
}


-(double)calcTotoalCalorie{
    double totoal=0;
    
    for (ExerciseModule* em in _dataSource) {
        totoal+=em.amount*em.cal/15;
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
    for (ExerciseModule* em in _dataSource) {
        em.amount=0;
    }
    
    self.totoal=[self calcTotoalCalorie];
    self.totalLabel.text = [NSString stringWithFormat:@"%.2fK",self.totoal];
    
    ThirdTableViewController* vc=(ThirdTableViewController*)self.navigationController.viewControllers[self.navigationController.viewControllers.count-2];
    
    if([self.exerciseType isEqualToString:@"lifestyleSports"]){
        vc.lifestyleSports_totoal=_totoal;
    }else if([self.exerciseType isEqualToString:@"competitiveSports"]){
        vc.competitiveSports_totoal=_totoal;
    }
    
}
@end

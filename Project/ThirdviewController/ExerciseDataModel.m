//
//  ExerciseDataModel.m
//  Project
//
//  Created by Rick on 2017/12/4.
//  Copyright © 2017年 Rick. All rights reserved.
//

#import "ExerciseDataModel.h"

@implementation ExerciseDataModel
-(instancetype)init{
    self=[super init];
    if (self) {
        self.lifestyleSports=[NSMutableArray array];
        
        ExerciseModule * archeryModule=[[ExerciseModule alloc] init];
        archeryModule.exerciseName=@"Archery";
        archeryModule.cal=43;
        
        ExerciseModule * billiardsModule=[[ExerciseModule alloc] init];
        billiardsModule.exerciseName=@"Billiards";
        billiardsModule.cal=26;
        
        ExerciseModule * bowlingModule=[[ExerciseModule alloc] init];
        bowlingModule.exerciseName=@"Bowling";
        bowlingModule.cal=34;
        
        ExerciseModule * dartsModule=[[ExerciseModule alloc] init];
        dartsModule.exerciseName=@"Darts";
        dartsModule.cal=26;
        
        
        ExerciseModule * frisbeeModule=[[ExerciseModule alloc] init];
        frisbeeModule.exerciseName=@"Frisbee";
        frisbeeModule.cal=119;
        
        ExerciseModule * golfModule=[[ExerciseModule alloc] init];
        golfModule.exerciseName=@"Golf";
        golfModule.cal=60;
       
        ExerciseModule * horsebackRidingModule=[[ExerciseModule alloc] init];
        horsebackRidingModule.exerciseName=@"Horseback riding";
        horsebackRidingModule.cal=51;
        
        ExerciseModule * skateboardingModule=[[ExerciseModule alloc] init];
        skateboardingModule.exerciseName=@"Skateboarding";
        skateboardingModule.cal=68;
       
        ExerciseModule * taichiModule=[[ExerciseModule alloc] init];
        taichiModule.exerciseName=@"Tai Chi";
        taichiModule.cal=51;
        
        [self.lifestyleSports addObject:archeryModule];
        [self.lifestyleSports addObject:billiardsModule];
        [self.lifestyleSports addObject:bowlingModule];
        [self.lifestyleSports addObject:dartsModule];
        [self.lifestyleSports addObject:frisbeeModule];
        [self.lifestyleSports addObject:golfModule];
        [self.lifestyleSports addObject:horsebackRidingModule];
        [self.lifestyleSports addObject:skateboardingModule];
        [self.lifestyleSports addObject:taichiModule];
        
        
        
        self.competitiveSports = [NSMutableArray array];
        
        ExerciseModule * badmintonModule=[[ExerciseModule alloc] init];
        badmintonModule.exerciseName=@"Badminton";
        badmintonModule.cal=102;
        
        ExerciseModule * basketballModule=[[ExerciseModule alloc] init];
        basketballModule.exerciseName=@"Basketball";
        basketballModule.cal=119;
        
        ExerciseModule * boxingModule=[[ExerciseModule alloc] init];
        boxingModule.exerciseName=@"Boxing";
        boxingModule.cal=187;
        
        ExerciseModule * broomballModule=[[ExerciseModule alloc] init];
        broomballModule.exerciseName=@"Broomball";
        broomballModule.cal=102;
        
        ExerciseModule * fencingModule=[[ExerciseModule alloc] init];
        fencingModule.exerciseName=@"Fencing";
        fencingModule.cal=85;
        
        ExerciseModule * footballModule=[[ExerciseModule alloc] init];
        footballModule.exerciseName=@"Football";
        footballModule.cal=136;
        
        ExerciseModule * handballModule=[[ExerciseModule alloc] init];
        handballModule.exerciseName=@"Handball";
        handballModule.cal=187;
        
        ExerciseModule * hockeyModule=[[ExerciseModule alloc] init];
        hockeyModule.exerciseName=@"Hockey";
        hockeyModule.cal=119;
        
        ExerciseModule * rugbyModule=[[ExerciseModule alloc] init];
        rugbyModule.exerciseName=@"Rugby";
        rugbyModule.cal=153;
        
        ExerciseModule * tableTennisModule=[[ExerciseModule alloc] init];
        tableTennisModule.exerciseName=@"Table tennis";
        tableTennisModule.cal=51;
        
        ExerciseModule * tennisModule=[[ExerciseModule alloc] init];
        tennisModule.exerciseName=@"Tennis";
        tennisModule.cal=102;
        
       
        
       
        
        
        
        [self.competitiveSports addObject:badmintonModule];
        [self.competitiveSports addObject:basketballModule];
        [self.competitiveSports addObject:broomballModule];
        [self.competitiveSports addObject:boxingModule];
        
        [self.competitiveSports addObject:fencingModule];
        [self.competitiveSports addObject:footballModule];
        [self.competitiveSports addObject:handballModule];
        [self.competitiveSports addObject:hockeyModule];
       
        [self.competitiveSports addObject:rugbyModule];
        [self.competitiveSports addObject:tableTennisModule];
        [self.competitiveSports addObject:tennisModule];
    }
    return self;
}

@end


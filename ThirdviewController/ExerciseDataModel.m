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
        self.aerobicExercises=[NSMutableArray array];
        
        ExerciseModule * archeryModule=[[ExerciseModule alloc] init];
        archeryModule.exerciseName=@"Archery";
        archeryModule.cal=43;
        
        ExerciseModule * badmintonModule=[[ExerciseModule alloc] init];
        badmintonModule.exerciseName=@"Badminton";
        badmintonModule.cal=102;
        
        ExerciseModule * basketballModule=[[ExerciseModule alloc] init];
        basketballModule.exerciseName=@"Basketball";
        basketballModule.cal=119;
        
        ExerciseModule * billiardsModule=[[ExerciseModule alloc] init];
        billiardsModule.exerciseName=@"Billiards";
        billiardsModule.cal=26;
        
        ExerciseModule * bowlingModule=[[ExerciseModule alloc] init];
        bowlingModule.exerciseName=@"Bowling";
        bowlingModule.cal=34;
        
        ExerciseModule * boxingModule=[[ExerciseModule alloc] init];
        boxingModule.exerciseName=@"Boxing";
        boxingModule.cal=187;
        
        ExerciseModule * broomballModule=[[ExerciseModule alloc] init];
        broomballModule.exerciseName=@"Broomball";
        broomballModule.cal=102;
        
        ExerciseModule * footballModule=[[ExerciseModule alloc] init];
        footballModule.exerciseName=@"Football";
        footballModule.cal=136;
        
        ExerciseModule * frisbeeModule=[[ExerciseModule alloc] init];
        frisbeeModule.exerciseName=@"Frisbee";
        frisbeeModule.cal=34;
        
        
        [self.aerobicExercises addObject:archeryModule];
        [self.aerobicExercises addObject:badmintonModule];
        [self.aerobicExercises addObject:basketballModule];
        [self.aerobicExercises addObject:billiardsModule];
        [self.aerobicExercises addObject:bowlingModule];
        [self.aerobicExercises addObject:boxingModule];
        [self.aerobicExercises addObject:broomballModule];
        [self.aerobicExercises addObject:footballModule];
        [self.aerobicExercises addObject:frisbeeModule];
        
        self.anaerobicExercises = [NSMutableArray array];
        
        ExerciseModule * golfModule=[[ExerciseModule alloc] init];
        golfModule.exerciseName=@"Golf";
        golfModule.cal=60;
        
        ExerciseModule * handballModule=[[ExerciseModule alloc] init];
        handballModule.exerciseName=@"Handball";
        handballModule.cal=187;
        
        ExerciseModule * hockeyModule=[[ExerciseModule alloc] init];
        hockeyModule.exerciseName=@"Hockey";
        hockeyModule.cal=119;
        
        ExerciseModule * horsebackRidingModule=[[ExerciseModule alloc] init];
        horsebackRidingModule.exerciseName=@"Horseback riding";
        horsebackRidingModule.cal=51;
        
        ExerciseModule * rugbyModule=[[ExerciseModule alloc] init];
        rugbyModule.exerciseName=@"Rugby";
        rugbyModule.cal=153;
        
        ExerciseModule * tableTennisModule=[[ExerciseModule alloc] init];
        tableTennisModule.exerciseName=@"Table tennis";
        tableTennisModule.cal=51;
        
        ExerciseModule * tennisModule=[[ExerciseModule alloc] init];
        tennisModule.exerciseName=@"Tennis";
        tennisModule.cal=102;
        
       
        [self.anaerobicExercises addObject:golfModule];
        [self.anaerobicExercises addObject:handballModule];
        [self.anaerobicExercises addObject:hockeyModule];
        [self.anaerobicExercises addObject:horsebackRidingModule];
        [self.anaerobicExercises addObject:rugbyModule];
        [self.anaerobicExercises addObject:tableTennisModule];
        [self.anaerobicExercises addObject:tennisModule];
    }
    return self;
}

@end


//
//  dataModule.h
//  Project
//
//  Created by Rick on 2017/11/27.
//  Copyright © 2017年 Rick. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FoodModule.h"
#import "GroupModule.h"
@interface dataModule : NSObject

@property (strong,nonatomic)NSMutableArray *egg;
@property (strong,nonatomic)NSMutableArray *bacon;
@property (strong,nonatomic)NSMutableArray *differentTypesOfFlakes;
@property (strong,nonatomic)NSMutableArray *sausages;
@property (strong,nonatomic)NSMutableArray *stapleFood;

@property (strong,nonatomic)NSMutableArray *salad;
@property (strong,nonatomic)NSMutableArray *chicken;
@property (strong,nonatomic)NSMutableArray *beef;
@property (strong,nonatomic)NSMutableArray *lamb;
@property (strong,nonatomic)NSMutableArray *pork;
@property (strong,nonatomic)NSMutableArray *seafood;
@property (strong,nonatomic)NSMutableArray *fruit;
@property (strong,nonatomic)NSMutableArray *fastFood;
@property (strong,nonatomic)NSMutableArray *eggsAndDairy;

@property (strong,nonatomic)NSMutableArray *breakfast;
@property (strong,nonatomic)NSMutableArray *lunch;


@end

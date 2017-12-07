//
//  FoodModule.h
//  Project
//
//  Created by Rick on 2017/11/26.
//  Copyright © 2017年 Rick. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FoodModule : NSObject

//define all properties used for food
@property (nonatomic,strong) NSString *foodName;
@property (nonatomic,strong) NSString *unit;
@property double cal;
@property NSInteger amount;

@end

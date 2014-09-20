//
//  School.h
//  stoup-ios
//
//  Created by Peter Fryer-Davis on 2014-09-20.
//  Copyright (c) 2014 stoup. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SchoolClass.h"

@interface School : NSObject

@property (weak, nonatomic) NSString *schoolName;
@property (weak, nonatomic) NSMutableArray *classes;

@end

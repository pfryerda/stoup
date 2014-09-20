//
//  Class.h
//  stoup-ios
//
//  Created by Peter Fryer-Davis on 2014-09-20.
//  Copyright (c) 2014 stoup. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Group.h"

@interface SchoolClass : NSObject

@property (weak, nonatomic) NSString *className;
@property (weak, nonatomic) NSMutableArray *groups;

@end

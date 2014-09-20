//
//  Group.h
//  stoup-ios
//
//  Created by Peter Fryer-Davis on 2014-09-20.
//  Copyright (c) 2014 stoup. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Group : NSObject

@property (weak, nonatomic) NSString *groupName;
@property (weak, nonatomic) NSString *times;
@property (weak, nonatomic) NSString *place;
@property (weak, nonatomic) NSString *frequency;
@property (weak, nonatomic) NSString *adminEmail;
@property (weak, nonatomic) NSMutableArray *groupEmails;

@end

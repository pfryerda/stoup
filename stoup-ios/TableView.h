//
//  TableView.h
//  stoup-ios
//
//  Created by Peter Fryer-Davis on 2014-09-20.
//  Copyright (c) 2014 stoup. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddSchool.h"

@interface TableView : UITableViewController <AddSchoolDelegate>

@property (nonatomic) NSMutableArray *schools;
@property (nonatomic) NSString *schoolName;
@property (nonatomic) NSString *className;

@end

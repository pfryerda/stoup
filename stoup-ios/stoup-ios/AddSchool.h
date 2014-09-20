//
//  Add School.h
//  stoup-ios
//
//  Created by Peter Fryer-Davis on 2014-09-20.
//  Copyright (c) 2014 stoup. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AddSchool;

@protocol AddSchoolDelegate <NSObject>
- (void)addSchoolDidCancel:(AddSchool *)controller;
- (void)addSchoolDidDone:(AddSchool *)controller;
@end

@interface AddSchool : UIViewController

@property (nonatomic, weak) id <AddSchoolDelegate> delegate;

@property (weak, nonatomic) IBOutlet UITextField *schoolNameField;
@property (weak, nonatomic) IBOutlet UITextField *classNameField;

- (IBAction)cancel:(id)sender;
- (IBAction)done:(id)sender;


@end

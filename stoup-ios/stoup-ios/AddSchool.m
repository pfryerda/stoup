//
//  Add School.m
//  stoup-ios
//
//  Created by Peter Fryer-Davis on 2014-09-20.
//  Copyright (c) 2014 stoup. All rights reserved.
//

#import "AddSchool.h"
#import "TableView.h"

@implementation AddSchool

- (IBAction)cancel:(id)sender {
    [self.delegate addSchoolDidCancel:self];
}

- (IBAction)done:(id)sender {
    
    NSLog(@"School: %@  |  Class: %@", self.schoolNameField.text, self.classNameField.text);
    
    
    [self.delegate addSchoolDidDone:self];
}
@end

//
//  TableView.m
//  stoup-ios
//
//  Created by Peter Fryer-Davis on 2014-09-20.
//  Copyright (c) 2014 stoup. All rights reserved.
//

#import "TableView.h"
#import "School.h"
#import "SchoolClass.h"
#import "Group.h"

@implementation TableView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.schools = [NSMutableArray arrayWithCapacity:11];
    School *school = [[School alloc] init];
    school.schoolName = @"University of Waterloo";
    SchoolClass *class = [[SchoolClass alloc] init];
    class.className = @"CS 246";
    Group *group = [[Group alloc] init];
    group.groupName = @"OO Study Group";
    NSMutableArray *emails = [NSMutableArray arrayWithObjects:@"jacobwilliamsma@gmail.com", @"elvin@elvinyung.com", @"amandafenn@gmail.com", nil];
    group.groupEmails = emails;
    group.adminEmail = @"pfryerdavis@gmail.com";
    NSMutableArray *groups = [NSMutableArray arrayWithObject:group];
    class.groups = groups;
    NSMutableArray *classes = [NSMutableArray arrayWithObject:group];
    school.classes = classes;
    [self.schools addObject:school];
    
    school = [[School alloc] init];
    school.schoolName = @"Wilfred Laurier University";
    school.classes = nil;
    [self.schools addObject:school];
    
    school = [[School alloc] init];
    school.schoolName = @"University of Toronto";
    school.classes = nil;
    [self.schools addObject:school];
    
    school = [[School alloc] init];
    school.schoolName = @"York University";
    school.classes = nil;
    [self.schools addObject:school];
    
    school = [[School alloc] init];
    school.schoolName = @"University of Western Ontario";
    school.classes = nil;
    [self.schools addObject:school];
    
    school = [[School alloc] init];
    school.schoolName = @"University of Pennsilvania";
    school.classes = nil;
    [self.schools addObject:school];
    
    school = [[School alloc] init];
    school.schoolName = @"Pennsilvania State University";
    school.classes = nil;
    [self.schools addObject:school];
    
    school = [[School alloc] init];
    school.schoolName = @"Harvard University";
    school.classes = nil;
    [self.schools addObject:school];
    
    school = [[School alloc] init];
    school.schoolName = @"MIT";
    school.classes = nil;
    [self.schools addObject:school];
    
    school = [[School alloc] init];
    school.schoolName = @"Yale University";
    school.classes = nil;
    [self.schools addObject:school];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.schools count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"schoolCell"];
    
    School *school= self.schools[indexPath.row];
    NSString *name = school.schoolName;
    cell.textLabel.text = name;
    
    return cell;
}

- (void) addSchoolDidCancel:(AddSchool *)controller {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void) addSchoolDidDone:(AddSchool *)controller {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"addSchool"]) {
        UINavigationController *navigationController = segue.destinationViewController;
        AddSchool *addSchoolVC = [navigationController viewControllers][0];
        addSchoolVC.delegate = self;
    }
}

@end

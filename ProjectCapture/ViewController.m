//
//  ViewController.m
//  ProjectCapture
//
//  Created by Erik Hoversten on 13.12.15.
//  Copyright © 2015 EverProductions. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"         // Managed Object Context
#import <CoreData/CoreData.h>   // Core Data
#import "CaptureEntry.h"        // Data file

@interface ViewController ()

@property (nonatomic, strong) AppDelegate            *appDelegate;
@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;

@property (weak, nonatomic) IBOutlet UITableView *captureTableView;

@end

@implementation ViewController

#pragma Mark - Fetch Request Methods

#pragma Mark - Interactivity Methods

#pragma Mark - TableView Methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 5;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *cellIdentifier = @"cell";
    UITableViewCell *cell = (UITableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    // if no "cell" exists; create one
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
    }
    cell.textLabel.text = @"Testing";
    return cell;
    
}




//- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section;    // fixed font style. use custom view (UILabel) if you want something different
//- (nullable NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section;




#pragma Mark - Life Cycle Methods

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Initializing Appdelegate Control
    _appDelegate = (AppDelegate *) [[UIApplication sharedApplication] delegate];
    _managedObjectContext = _appDelegate.managedObjectContext;   // allows appDelegate to run managedObjectontext
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

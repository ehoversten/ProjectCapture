//
//  AddEntryViewController.m
//  ProjectCapture
//
//  Created by Erik Hoversten on 13.12.15.
//  Copyright © 2015 EverProductions. All rights reserved.
//

#import "AddEntryViewController.h"
#import "AppDelegate.h"         // Managed Object Context
#import "CaptureEntry.h"        // Data file

@interface AddEntryViewController ()

@property (nonatomic, strong) AppDelegate            *appDelegate;
@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *cancelButton;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneButton;



@end

@implementation AddEntryViewController

#pragma Mark - Interactivity Methods

- (IBAction)cancelButtonPressed:(id)sender {
    //[self.navigationController popViewControllerAnimated:true];
    [self dismissViewControllerAnimated:true completion:nil];
}

- (IBAction)doneButtonPressed:(id)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}


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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

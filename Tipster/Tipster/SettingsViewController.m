//
//  SettingsViewController.m
//  Tipster
//
//  Created by Hechen Gao on 7/24/20.
//  Copyright © 2020 codepath. All rights reserved.
//

#import "SettingsViewController.h"
#import "TipsUtility.h"

@interface SettingsViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *defaultTipControl;

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    int idx = [TipsUtility defaultTipPercentage];
    self.defaultTipControl.selectedSegmentIndex = idx;
    NSLog(@"View did load");
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];

    NSLog(@"View will appear");
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];

    NSLog(@"View did appear");
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];

    NSLog(@"View will disappear");
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];

    NSLog(@"View did disappear");
}

- (IBAction)onEdit:(id)sender {
    int idx = self.defaultTipControl.selectedSegmentIndex;
    NSLog(@"selected");
    NSLog([NSString stringWithFormat:@"$%.2d", idx]);
    [TipsUtility setDefaultTipPercentage:idx];
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

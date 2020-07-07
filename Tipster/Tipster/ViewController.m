//
//  ViewController.m
//  Tipster
//
//  Created by Hechen Gao on 7/6/20.
//  Copyright © 2020 codepath. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *billField;
@property (weak, nonatomic) IBOutlet UILabel *tipLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipControl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)onTap:(id)sender {
    [self.view endEditing:YES];
}

- (IBAction)onEdit:(id)sender {
    NSArray *percentages = @[
        @(0.10),
        @(0.2),
        @(0.22)];
    
    double tipPercentage = [percentages[self.tipControl.selectedSegmentIndex] doubleValue];
    double bill = [self.billField.text doubleValue];
    double tip = tipPercentage * bill;
    double total = bill + tip;
    
    self.tipLabel.text = [NSString stringWithFormat:@"$%.2f", tip];
    self.totalLabel.text = [NSString stringWithFormat:@"$%.2f", total];
}

- (IBAction)onEditingBegin:(id)sender {
}

- (IBAction)onEditingEnd:(id)sender {
}


@end

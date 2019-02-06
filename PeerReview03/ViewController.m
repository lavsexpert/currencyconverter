//
//  ViewController.m
//  PeerReview03
//
//  Created by Sergey Lavrov on 06.02.2019.
//  Copyright © 2019 +1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UIButton *convertButton;
@property (weak, nonatomic) IBOutlet UILabel *currencyEuro;
@property (weak, nonatomic) IBOutlet UILabel *currencyPound;
@property (weak, nonatomic) IBOutlet UILabel *currencyYen;

@end

@implementation ViewController

- (IBAction)buttonTapped:(id)sender {
    self.convertButton.enabled = NO;
    self.currencyEuro.text = @"Euro";
    self.currencyPound.text = @"Pound";
    self.currencyYen.text = @"Yen";
    self.convertButton.enabled = YES;
}

@end

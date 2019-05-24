//
//  ViewController.m
//  PeerReview03
//
//  Created by Sergey Lavrov on 06.02.2019.
//  Copyright © 2019 +1. All rights reserved.
//

#import "ViewController.h"
#import "CurrencyRequest/CRCurrencyRequest.h"
#import "CurrencyRequest/CRCurrencyResults.h"
@interface ViewController () <CRCurrencyRequestDelegate>
@property (nonatomic) CRCurrencyRequest *req;
@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UIButton *convertButton;
@property (weak, nonatomic) IBOutlet UILabel *currencyEuro;
@property (weak, nonatomic) IBOutlet UILabel *currencyPound;
@property (weak, nonatomic) IBOutlet UILabel *currencyYen;
@end

@implementation ViewController
- (IBAction)buttonTapped:(id)sender {
    self.convertButton.enabled = NO;
    self.req = [[CRCurrencyRequest alloc] init];
    self.req.delegate = self;
    [self.req start];
}
- (void)currencyRequest:(CRCurrencyRequest *)req retrievedCurrencies:(CRCurrencyResults *)currencies{
    self.convertButton.enabled = YES;
    double inputValue = [self.inputField.text floatValue];
    double euroValue = inputValue * currencies.EUR;
    self.currencyEuro.text = [NSString stringWithFormat:@"%.2f", euroValue];
    double poundValue = inputValue * currencies.GBP;
    self.currencyPound.text = [NSString stringWithFormat:@"%.2f", poundValue];
    double yenValue = inputValue * currencies.JPY;
    self.currencyYen.text = [NSString stringWithFormat:@"%.0f", yenValue];
}
@end

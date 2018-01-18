//
//  ViewController.m
//  DiscountCalculator
//
//  Created by chaoleihua on 14-6-30.
//  Copyright (c) 2014年 Chaolei Hua. All rights reserved.
//

#import "ViewController.h"
#import "CurrencyViewController.h"
#import "ItemPrice.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.


}

- (void)didReceiveMemoryWarning
{

    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
 
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.PriceText resignFirstResponder];
    [self.TaxText resignFirstResponder];
    [self.DiscountText resignFirstResponder];
}

- (IBAction)CalculateButton:(id)sender {
    
    [self.PriceText resignFirstResponder];
    [self.TaxText resignFirstResponder];
    [self.DiscountText resignFirstResponder];
    
    NSNumber *price=@([self.PriceText.text floatValue]);
    NSNumber *salesTax=@([self.TaxText.text floatValue]);
    NSNumber *percentDiscount=@([self.DiscountText.text floatValue]);
    
    self.ItemViewOne=[[ItemPrice alloc]initWithPrice:price salesTax:salesTax discount:percentDiscount];
    
    self.Bar.ipforItemPrice=self.ItemViewOne;
    
    self.discountPrice.text=[NSString stringWithFormat:@"Discounted Price: %@ $",self.ItemViewOne.discountedPrice];
    
    self.moneyYouSaved.text=[NSString stringWithFormat:@"Money You Saved: %@ $",self.ItemViewOne.dollarsOff];
    
    
    [self.Bar setNeedsDisplay];
    self.Bar.hidden=NO;
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"Preparing for the segue from Green to Purple View Controller.");
    
    ViewController* viewController = (ViewController*)segue.sourceViewController;
    
    CurrencyViewController* currencyViewController = (CurrencyViewController*)segue.destinationViewController;
    
    currencyViewController.parentVC = viewController;
    
}
@end
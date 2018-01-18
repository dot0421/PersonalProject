//
//  ViewController.h
//  DiscountCalculator
//
//  Created by chaoleihua on 14-6-30.
//  Copyright (c) 2014年 Chaolei Hua. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyCustomView.h"
#import "CurrencyViewController.h"
@interface ViewController : UIViewController
@property(strong,nonatomic) ItemPrice* ItemViewOne;
@property (weak, nonatomic) IBOutlet UITextField *PriceText;
@property (weak, nonatomic) IBOutlet UITextField *TaxText;
@property (weak, nonatomic) IBOutlet UITextField *DiscountText;
@property (weak, nonatomic) IBOutlet UILabel *discountPrice;
- (IBAction)CalculateButton:(id)sender;
@property (weak, nonatomic) IBOutlet MyCustomView *Bar;
@property (weak, nonatomic) IBOutlet UILabel *moneyYouSaved;



@end

//
//  CurrencyViewController.h
//  DiscountCalculator
//
//  Created by chaoleihua on 7/8/14.
//  Copyright (c) 2014 Chaolei Hua. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ItemPrice.h"
#import "ViewController.h"
#import "TableViewCell.h"
@class ViewController;
@interface CurrencyViewController : UITableViewController
@property ItemPrice* ipItem;
@property (weak,nonatomic) ViewController* parentVC;
@property(weak,nonatomic) TableViewCell* cell;

- (IBAction)Convert:(id)sender;
@end

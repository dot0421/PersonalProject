//
//  ItemPrice.h
//  DiscountCalculator
//
//  Created by chaoleihua on 14-6-30.
//  Copyright (c) 2014年 Chaolei Hua. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ItemPrice : NSObject
@property (retain, nonatomic) NSNumber *price;
@property (retain, nonatomic) NSNumber *salesTax;
@property (retain, nonatomic) NSNumber *percentDiscount;
@property (readonly, nonatomic) NSNumber *dollarsOff;
@property (readonly, nonatomic) NSNumber *discountedPrice;
@property (readonly, nonatomic) float Ratio;

-(ItemPrice*) initWithPrice:(NSNumber*)aPrice salesTax:(NSNumber*)theTax discount:(NSNumber*) theDiscount;

-(NSNumber*) discountedPrice;

@end

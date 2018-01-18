//
//  ItemPrice.m
//  DiscountCalculator
//
//  Created by chaoleihua on 14-6-30.
//  Copyright (c) 2014年 Chaolei Hua. All rights reserved.
//

#import "ItemPrice.h"

ItemPrice* secretPrice;

@implementation ItemPrice
@synthesize price;
@synthesize salesTax;
@synthesize percentDiscount;

-(ItemPrice*) initWithPrice:(NSNumber *)aPrice
                   salesTax:(NSNumber *)theTax
                   discount:(NSNumber *)theDiscount{
    self=[super init];
    if(self){
        price=aPrice;
        salesTax=theTax;
        percentDiscount=theDiscount;
    }
    return self;
}

-(NSNumber*) discountedPrice{
    return [NSNumber numberWithFloat: [self.price floatValue]-([self.price floatValue]*[self.percentDiscount floatValue]/100)+([self.price floatValue]*[self.salesTax floatValue]/100)];
}

-(NSNumber*) dollarsOff{
    return [NSNumber numberWithFloat:([self.price floatValue]*[self.percentDiscount floatValue]/100)];
}

-(float) Ratio{
    return [self.discountedPrice floatValue]/
    ([self.price floatValue]*(1+[self.salesTax floatValue]/100));
    }


@end

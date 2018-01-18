//
//  MyCustomView.m
//  DiscountCalculator
//
//  Created by chaoleihua on 14-7-1.
//  Copyright (c) 2014年 Chaolei Hua. All rights reserved.
//

#import "MyCustomView.h"
#import "ItemPrice.h"


@implementation MyCustomView

@synthesize ipforItemPrice;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
    
    }
    return self;
}



// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    
    CGContextRef context = UIGraphicsGetCurrentContext();
	float height=rect.size.height;
    float onethird=rect.size.width/3.0;
    float starting_x=rect.origin.x+onethird;
    
	// Add Rect to the current path, then stroke it
    CGContextSetFillColorWithColor(context, [UIColor blackColor].CGColor);
	CGContextAddRect(context, CGRectMake(starting_x, rect.origin.y,onethird ,height));
	CGContextFillPath(context);
    
    CGContextSetFillColorWithColor(context, [UIColor cyanColor].CGColor);
	CGContextAddRect(context, CGRectMake(starting_x, rect.origin.y,onethird ,height * self.ipforItemPrice.Ratio));
	CGContextFillPath(context);
    
    
}


@end

//
//  TableViewCell.m
//  DiscountCalculator
//
//  Created by chaoleihua on 7/11/14.
//  Copyright (c) 2014 Chaolei Hua. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell
@synthesize showPrice;
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

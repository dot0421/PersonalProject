//
//  CurrencyViewController.m
//  DiscountCalculator
//
//  Created by chaoleihua on 7/8/14.
//  Copyright (c) 2014 Chaolei Hua. All rights reserved.
//

#import "CurrencyViewController.h"
#import "ISO4217Currency.h"
#import "ExchangeRate.h"
#import "ItemPrice.h"
#import "ViewController.h"
#import "TableViewCell.h"


@interface CurrencyViewController (){
    
    NSArray *listOfCountries;
    NSString *countrySelected;
}

@end


@implementation CurrencyViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    listOfCountries = @[@"AFGHANISTAN", @"ALGERIA", @"ARGENTINA", @"AUSTRALIA", @"BRAZIL",@"BELGIUM",@"CAMBODIA",@"CANADA", @"CHILE",@"CHINA",@"COSTA RICA",@"DENMARK"];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return [listOfCountries count];
}




- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuseIdentifier" forIndexPath:indexPath];
    
    
    // Configure the cell...
    cell.textLabel.text = [listOfCountries objectAtIndex: indexPath.row];
    return cell;
}



-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    countrySelected=[listOfCountries objectAtIndex:indexPath.row];
     NSLog(@"%@",[listOfCountries objectAtIndex:indexPath.row]);
    //self.cell.showPrice.hidden=NO;
    TableViewCell* cell=[self.tableView cellForRowAtIndexPath:indexPath];
    cell.showPrice.hidden=NO;
    if ([countrySelected isEqual:@"AUSTRALIA"]) {
        
        ExchangeRate *e = [[ExchangeRate alloc] initWithSourceCurrency: [ISO4217Currency unitedStatesCurrency] DestinationCurrency: [ISO4217Currency australiaCurrency]];
        
        cell.showPrice.text=[NSString stringWithFormat:@"%g AUD",(e.rate.floatValue * [self.parentVC.ItemViewOne.discountedPrice floatValue])];
    }
    else if ([countrySelected isEqual:@"AFGHANISTAN"]) {
        
        ExchangeRate *e = [[ExchangeRate alloc] initWithSourceCurrency: [ISO4217Currency unitedStatesCurrency] DestinationCurrency: [ISO4217Currency afghanistanCurrency]];
        
        cell.showPrice.text=[NSString stringWithFormat:@"%g AFN",(e.rate.floatValue * [self.parentVC.ItemViewOne.discountedPrice floatValue])];
    }
    else if ([countrySelected isEqual:@"ALGERIA"]) {
        
        ExchangeRate *e = [[ExchangeRate alloc] initWithSourceCurrency: [ISO4217Currency unitedStatesCurrency] DestinationCurrency: [ISO4217Currency algeriaCurrency]];
        
        cell.showPrice.text=[NSString stringWithFormat:@"%g DZD",(e.rate.floatValue * [self.parentVC.ItemViewOne.discountedPrice floatValue])];
    }
    else if ([countrySelected isEqual:@"ARGENTINA"]) {
        
        ExchangeRate *e = [[ExchangeRate alloc] initWithSourceCurrency: [ISO4217Currency unitedStatesCurrency] DestinationCurrency: [ISO4217Currency argentinaCurrency]];
        
        cell.showPrice.text=[NSString stringWithFormat:@"%g ARS",(e.rate.floatValue * [self.parentVC.ItemViewOne.discountedPrice floatValue])];
    }
    else if ([countrySelected isEqual:@"BRAZIL"]) {
        
        ExchangeRate *e = [[ExchangeRate alloc] initWithSourceCurrency: [ISO4217Currency unitedStatesCurrency] DestinationCurrency: [ISO4217Currency brazilCurrency]];
        
        cell.showPrice.text=[NSString stringWithFormat:@"%g BRL",(e.rate.floatValue * [self.parentVC.ItemViewOne.discountedPrice floatValue])];
    }
    else if ([countrySelected isEqual:@"BELGIUM"]) {
        
        ExchangeRate *e = [[ExchangeRate alloc] initWithSourceCurrency: [ISO4217Currency unitedStatesCurrency] DestinationCurrency: [ISO4217Currency belgiumCurrency]];
        
        cell.showPrice.text=[NSString stringWithFormat:@"%g EUR",(e.rate.floatValue * [self.parentVC.ItemViewOne.discountedPrice floatValue])];
    }
    
}
@end

/*
// Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSInd-(void)delayedSelection:(NSIndexPath *)idxPath withSegueIdentifier:(NSString *)segueID {
 if (!idxPath) idxPath = [NSIndexPath indexPathForRow:0 inSection:0];
 [self performSelector:@selector(selectIndexPath:) withObject:@{@"NSIndexPath": idxPath, @"UIStoryboardSegue": segueID } afterDelay:0];
 }
exPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



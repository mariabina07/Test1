//
//  TableViewController.m
//  test1
//
//  Created by MariaBina07 on 7/10/15.
//  Copyright (c) 2015 mariabina. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TableViewController.h"
#import "TableCellController.h"
#import "CellDetailViewController.h"

@implementation TableViewController
{
    NSArray *tableData;
    NSArray *thumbnails;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    tableData = [NSArray arrayWithObjects:@"Egg", @"lalala", @"tiga", @"empat", @"lima", @"enam", @"tujuh", @"delapan", nil];
    thumbnails = [NSArray arrayWithObjects:@"green_tea.jpg", @"hamburger.jpg", @"vegetable_curry.jpg", @"egg_benedict.jpg", @"full_breakfast.jpg", @"ham_and_cheese_panini.jpg", @"japanese_noodle_with_pork.jpg", @"thai_shrimp_cake.jpg", nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //static NSString *tableIdentifier = @"TableItem";
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:tableIdentifier];
    
    static NSString *tableIdentifier = @"TableCellController";
    TableCellController *cell = (TableCellController *)[tableView dequeueReusableCellWithIdentifier:tableIdentifier];
    
    if (cell == nil) {
        //cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:tableIdentifier];
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"TableCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    //cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    //cell.imageView.image = [UIImage imageNamed:[thumbnails objectAtIndex:indexPath.row]];
    cell.titleLabel.text = [tableData objectAtIndex:indexPath.row];
    cell.photoProfile.image = [UIImage imageNamed:[thumbnails objectAtIndex:indexPath.row]];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 111;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
//    NSString *message = [NSString stringWithFormat:@"%@ is selected!", [tableData objectAtIndex:indexPath.row]];
//    UIAlertView *messageAlert = [[UIAlertView alloc] initWithTitle:@"Row Selected" message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
//    [messageAlert show];
    NSString *storyboardName = @"Main";
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle:nil];
    CellDetailViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"CellDetailView"];
    vc.detailString = [NSString stringWithFormat:@"%@", [tableData objectAtIndex:indexPath.row]];
    vc.fotoUrl = [thumbnails objectAtIndex:indexPath.row];
    
    [self presentViewController:vc animated:YES completion:nil];
}
@end

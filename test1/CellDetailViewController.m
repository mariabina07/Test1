//
//  CellDetailViewController.m
//  test1
//
//  Created by MariaBina07 on 7/27/15.
//  Copyright (c) 2015 mariabina. All rights reserved.
//

#import "CellDetailViewController.h"
//#import "TableCellController.h"

@interface CellDetailViewController ()

@end

@implementation CellDetailViewController
@synthesize detailPhoto = _detailPhoto;
@synthesize detailTitleLabel = _detailTitleLabel;
@synthesize detailString = _detailString;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _detailTitleLabel.text = _detailString;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setDetailString:(NSString *)detailString
{
    _detailString = detailString;
    _detailTitleLabel.text = detailString;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

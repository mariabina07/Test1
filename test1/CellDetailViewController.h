//
//  CellDetailViewController.h
//  test1
//
//  Created by MariaBina07 on 7/27/15.
//  Copyright (c) 2015 mariabina. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CellDetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *detailPhoto;
@property (nonatomic, weak) IBOutlet UILabel *detailTitleLabel;
@property (strong, nonatomic) NSString *fotoUrl;
@property (strong, nonatomic) NSString *detailString;

@end

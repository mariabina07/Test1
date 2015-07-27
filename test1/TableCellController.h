//
//  TableCellController.h
//  test1
//
//  Created by MariaBina07 on 7/16/15.
//  Copyright (c) 2015 mariabina. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableCellController : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *titleLabel;
@property (nonatomic, weak) IBOutlet UILabel *bioLabel;
@property (nonatomic, weak) IBOutlet UILabel *noteLabel;
@property (nonatomic, weak) IBOutlet UIImageView *photoProfile;

@end

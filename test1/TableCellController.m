//
//  TableCellController.m
//  test1
//
//  Created by MariaBina07 on 7/16/15.
//  Copyright (c) 2015 mariabina. All rights reserved.
//

#import "TableCellController.h"

@implementation TableCellController
@synthesize titleLabel = _titleLabel;
@synthesize bioLabel = _bioLabel;
@synthesize noteLabel = _noteLabel;
@synthesize photoProfile = _photoProfile;

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

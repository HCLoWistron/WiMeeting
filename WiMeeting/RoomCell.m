//
//  RoomCell.m
//  WiMeeting
//
//  Created by HungChe Lo on 8/18/14.
//  Copyright (c) 2014 Wistron. All rights reserved.
//

#import "RoomCell.h"

@implementation RoomCell


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

//
//  WiMeetingRoomInfoTableViewCell.h
//  WiMeeting
//
//  Created by HungChe Lo on 8/15/14.
//  Copyright (c) 2014 Wistron. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RoomInfoCell : UITableViewCell

// Adding Data Define
@property (nonatomic, weak) IBOutlet UILabel *titleLabel;
@property (nonatomic, weak) IBOutlet UILabel *descLabel;
@property (nonatomic, weak) IBOutlet UIButton *joinButton;

@end

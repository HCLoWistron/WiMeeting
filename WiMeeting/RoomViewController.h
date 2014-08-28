//
//  RoomViewController.h
//  WiMeeting
//
//  Created by HungChe Lo on 8/18/14.
//  Copyright (c) 2014 Wistron. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RoomCell.h"

@interface RoomViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>

// Adding roomInfo for inout room info
@property (nonatomic, strong) NSMutableArray *roomInfos;

@end

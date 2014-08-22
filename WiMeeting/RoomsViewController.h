//
//  RoomsViewController.h
//  WiMeeting
//
//  Created by HungChe Lo on 8/22/14.
//  Copyright (c) 2014 Wistron. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RoomCell.h"

@interface RoomsViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

// Adding roomInfo for inout room info
@property (nonatomic, strong) NSMutableArray *roomInfos;

@end

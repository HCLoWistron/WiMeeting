//
//  RoomsViewController.m
//  WiMeeting
//
//  Created by HungChe Lo on 8/22/14.
//  Copyright (c) 2014 Wistron. All rights reserved.
//

#import "RoomsViewController.h"

@interface RoomsViewController ()

@end

@implementation RoomsViewController

- (void)loadRoomInfo
{
    self.roomInfos = [NSMutableArray arrayWithCapacity:2];
    
    // the static data
    NSMutableDictionary *dict1 = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                  @"2930",@"room",
                                  @"iOS Development",@"topic",
                                  @"Phil",@"speaker",
                                  @"2014/05/10 10:00",@"time",
                                  @"12",@"duration",
                                  @"Past",@"status",
                                  nil];
    NSMutableDictionary *dict2 = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                  @"3814",@"room",
                                  @"Windows Embedded Market",@"topic",
                                  @"Andy",@"speaker",
                                  @"2014/06/30 10:00",@"time",
                                  @"4",@"duration",
                                  @"Now",@"status",
                                  nil];
    NSMutableDictionary *dict3 = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                  @"5610",@"room",
                                  @"Patent Guideline",@"topic",
                                  @"Charles",@"speaker",
                                  @"2014/06/30 14:00",@"time",
                                  @"4",@"duration",
                                  @"Next",@"status",
                                  nil];
    NSMutableDictionary *dict4 = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                  @"2931",@"room",
                                  @"Fast Booting with WinCE6",@"topic",
                                  @"HC",@"speaker",
                                  @"2014/07/01 10:00",@"time",
                                  @"12",@"duration",
                                  @"Next",@"status",
                                  nil];
    
    
    [self.roomInfos addObject:dict1];
    [self.roomInfos addObject:dict2];
    [self.roomInfos addObject:dict3];
    [self.roomInfos addObject:dict4];
    
    //[self.tableView reloadData];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //#warning Potentially incomplete method implementation.
    // Return the number of sections.
    //return 0;
    
    // Return 1 section for testing
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //#warning Incomplete method implementation.
    // Return the number of rows in the section.
    //return 0;
    
    // Return 7 rows for testing
    //return 7;
    return [self.roomInfos count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    RoomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"RoomCell"];
    
    //cell.titleLabel.text = [NSString stringWithFormat:@"第 %i 個 Row 的 title", indexPath.row];
    //cell.descLabel.text = [NSString stringWithFormat:@"第 %i 個 Row 的 description", indexPath.row];
    
    NSDictionary *roomInfo = self.roomInfos[indexPath.row];
    
    cell.topicLabel.text = roomInfo[@"topic"];
    //cell.descLabel.text = roomInfo[@"desc"];
    //cell.roomLabel.text = [NSString stringWithFormat:@"Room: %@, Speaker: %@",roomInfo[@"room"],roomInfo[@"speaker"]];
    //cell.roomLabel.text = [NSString stringWithFormat:@"Room: %@",roomInfo[@"room"]];
    //cell.speakerLabel.text = [NSString stringWithFormat:@"Speaker: %@",roomInfo[@"speaker"]];
    cell.descLabel.text = [NSString stringWithFormat:@"Room: %@    Speaker: %@",roomInfo[@"room"],roomInfo[@"speaker"]];
    
    return cell;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self loadRoomInfo];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

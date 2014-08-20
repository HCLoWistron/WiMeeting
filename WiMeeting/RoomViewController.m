//
//  RoomViewController.m
//  WiMeeting
//
//  Created by HungChe Lo on 8/18/14.
//  Copyright (c) 2014 Wistron. All rights reserved.
//

#import "RoomViewController.h"

@interface RoomViewController ()

@end

@implementation RoomViewController



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

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self loadRoomInfo];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

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

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

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

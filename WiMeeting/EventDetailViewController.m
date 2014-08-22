//
//  EventDetailViewController.m
//  WiMeeting
//
//  Created by HungChe Lo on 8/20/14.
//  Copyright (c) 2014 Wistron. All rights reserved.
//

#import "EventDetailViewController.h"

@interface EventDetailViewController ()

@end

@implementation EventDetailViewController

@synthesize topicLabel;
@synthesize speakerLabel;
@synthesize roomLabel;
@synthesize timeLabel;
@synthesize durationLabel;
@synthesize topicName;
@synthesize speakerName;
@synthesize roomName;
@synthesize timeName;
@synthesize durationName;

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
    topicLabel.text = topicName;
    speakerLabel.text = speakerName;
    roomLabel.text = [NSString stringWithFormat:@"Room: %@",roomName];
    timeLabel.text = timeName;
    durationLabel.text = [NSString stringWithFormat:@"Duration: %@ Hours",durationName];
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

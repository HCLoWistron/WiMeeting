//
//  EventDetailViewController.h
//  WiMeeting
//
//  Created by HungChe Lo on 8/20/14.
//  Copyright (c) 2014 Wistron. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EventDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *topicLabel;
@property (weak, nonatomic) IBOutlet UILabel *speakerLabel;
@property (weak, nonatomic) IBOutlet UILabel *roomLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *durationLabel;

@property (weak, nonatomic) NSString *topicName;
@property (weak, nonatomic) NSString *speakerName;
@property (weak, nonatomic) NSString *roomName;
@property (weak, nonatomic) NSString *timeName;
@property (weak, nonatomic) NSString *durationName;

@end

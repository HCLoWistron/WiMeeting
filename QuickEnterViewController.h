//
//  QuickEnterViewController.h
//  WiMeeting
//
//  Created by HungChe Lo on 8/20/14.
//  Copyright (c) 2014 Wistron. All rights reserved.
//

#import <UIKit/UIKit.h>

// @HC, need to trigger text field delgate
@interface QuickEnterViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *descLabel;
@property (weak, nonatomic) IBOutlet UILabel *promptLabel;
@property (weak, nonatomic) IBOutlet UITextField *roomTextField;

-(IBAction)textFieldReturn:(id)sender;

@end

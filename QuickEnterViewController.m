//
//  QuickEnterViewController.m
//  WiMeeting
//
//  Created by HungChe Lo on 8/20/14.
//  Copyright (c) 2014 Wistron. All rights reserved.
//

#import "QuickEnterViewController.h"

@interface QuickEnterViewController ()

@end

@implementation QuickEnterViewController

-(IBAction)textFieldReturn:(id)sender
{
    [sender resignFirstResponder];
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
    
    self.titleLabel.text = [NSString stringWithFormat:@"Instant Meeting"];
    self.descLabel.text = [NSString stringWithFormat:@"Please input the meeting room number."];
    self.promptLabel.text = [NSString stringWithFormat:@"Room: "];

    // Ref Url:http://code-and-coffee.blogspot.tw/2013/01/how-to-dissmis-decimal-pad-keyboard.html
    UITapGestureRecognizer* tapGesture = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(dismissKeyboard)];
    tapGesture.cancelsTouchesInView = NO;
    [self.view addGestureRecognizer:tapGesture];
}

-(void)dismissKeyboard
{
    [self.roomTextField resignFirstResponder];//Assuming that UITextField Object is textField
}

/*
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.roomTextField resignFirstResponder];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if(textField)
    {
        [textField resignFirstResponder];
    }
    
    return NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

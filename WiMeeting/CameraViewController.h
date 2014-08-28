//
//  CameraViewController.h
//  WiMeeting
//
//  Created by HungChe Lo on 8/28/14.
//  Copyright (c) 2014 Wistron. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface CameraViewController : UIViewController {
    BOOL IsFrontCamera;
    BOOL IsExistImage;
}

//@property (strong, nonatomic) AVCaptureSession *captureSession;

@property (weak, nonatomic) IBOutlet UIView *imagePreview;
@property(nonatomic, retain) AVCaptureStillImageOutput *stillImageOutput;

@property (weak, nonatomic) IBOutlet UISegmentedControl *cameraSwitch;
- (IBAction)switchCamera:(id)sender;

@end

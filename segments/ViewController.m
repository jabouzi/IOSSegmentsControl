//
//  ViewController.m
//  segments
//
//  Created by Skander Jabouzi on 2015-10-28.
//  Copyright © 2015 Skander Software Solutions. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIView *containerView;
@property (weak, nonatomic) IBOutlet UIView *view1;
@property (weak, nonatomic) IBOutlet UIView *view2;
@property (weak, nonatomic) IBOutlet UIView *view3;
@property (weak, nonatomic) IBOutlet UITextField *text1;
@property (weak, nonatomic) IBOutlet UITextField *text2;
@property (weak, nonatomic) IBOutlet UITextField *text3;

@end

@implementation ViewController
- (IBAction)button1Clicked:(id)sender {
    [[self text1] setText:@"TEXT # 1"];
}

- (IBAction)button2Clicked:(id)sender {
    [[self text2] setText:@"TEXT # 2"];
}

- (IBAction)button3Clicked:(id)sender {
    [[self text3] setText:@"TEXT # 3"];
}

- (IBAction)segmentClicked:(id)sender {
    
    if ([sender selectedSegmentIndex] == 0)
    {
        self.view2.hidden = YES;
        self.view3.hidden = YES;
        self.view1.hidden = NO;

    }
    else if ([sender selectedSegmentIndex] == 1)
    {
        self.view2.hidden = NO;
        self.view3.hidden = YES;
        self.view1.hidden = YES;
    }
    else if ([sender selectedSegmentIndex] == 2)
    {
        self.view2.hidden = YES;
        self.view3.hidden = NO;
        self.view1.hidden = YES;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view2.hidden = YES;
    self.view3.hidden = YES;
    self.view1.hidden = NO;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  ViewController.m
//  YOLineKit
//
//  Created by Yusuke Ohashi on 6/21/13.
//  Copyright (c) 2013 Yusuke Ohashi. All rights reserved.
//

#import "ViewController.h"
#import "YOLineKit.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.title = @"Lineで送るデモ";
    _messageInput.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)openLineOniTunes:(id)sender
{
    [YOLineKit openLineAppOnITunes];
}

- (IBAction)sendMessageToLine:(id)sender
{
    if (![YOLineKit canOpenLineApp]) {
        [YOLineKit openLineAppOnITunes];
    }
    
    [YOLineKit sendText:_messageInput.text];
}

- (void)dealloc {
    [_messageInput release];
    [_sendButton release];
    [super dealloc];
}

- (BOOL) textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}
@end

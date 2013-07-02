//
//  ViewController.h
//  YOLineKit
//
//  Created by Yusuke Ohashi on 6/21/13.
//  Copyright (c) 2013 Yusuke Ohashi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>
@property (retain, nonatomic) IBOutlet UITextField *messageInput;
@property (retain, nonatomic) IBOutlet UIButton *sendButton;

@end

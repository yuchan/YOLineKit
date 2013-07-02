//
//  YOLineKitTests.m
//  YOLineKitTests
//
//  Created by Yusuke Ohashi on 6/21/13.
//  Copyright (c) 2013 Yusuke Ohashi. All rights reserved.
//

#import "YOLineKitTests.h"
#import "YOLineKit.h"

@implementation YOLineKitTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testSendImage
{
    BOOL can = [YOLineKit canOpenLineApp];
    UIImage *image = [UIImage imageNamed:@"linebutton_40x40.png"]; //送信テスト用イメージ
    
    if (can) {
        STAssertTrue([YOLineKit sendImage:image] == YES, @"送信は成功するはず");
    } else {
        STAssertTrue([YOLineKit sendImage:image] == NO, @"送信は失敗するはず");
    }
}

- (void)testSendText
{
    BOOL can = [YOLineKit canOpenLineApp];
    NSString *text = [[NSString alloc] initWithFormat:@"%@", @"テストです"];
    if (can) {
        STAssertTrue([YOLineKit sendText:text] == YES, @"送信は成功するはず");
    } else {
        STAssertTrue([YOLineKit sendText:text] == NO, @"送信は失敗するはず");
    }

    [text release];
}

@end

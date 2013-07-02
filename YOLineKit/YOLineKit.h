//
//  YOLineKit.h
//  YOLineKit
//
//  Created by Yusuke Ohashi on 6/21/13.
//  Copyright (c) 2013 Yusuke Ohashi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YOLineKit : NSObject
+ (BOOL) canOpenLineApp;
+ (void) openLineAppOnITunes;
+ (BOOL) sendText:(NSString *)text;
+ (BOOL) sendImage:(UIImage *)image;
@end

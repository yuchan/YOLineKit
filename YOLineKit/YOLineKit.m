//
//  YOLineKit.m
//  YOLineKit
//
//  Created by Yusuke Ohashi on 6/21/13.
//  Copyright (c) 2013 Yusuke Ohashi. All rights reserved.
//

#import "YOLineKit.h"

@implementation YOLineKit

+ (BOOL) canOpenLineApp
{
    return [[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"line://"]];
}

+ (void) openLineAppOnITunes
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://itunes.apple.com/jp/app/line/id443904275?ls=1&mt=8"]];
}

+ (BOOL) sendText:(NSString *)text {
    return [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"line://msg/text/%@", [text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]]]];
}

+ (BOOL) sendImage:(UIImage *)image {
    UIPasteboard *pasteboard = [UIPasteboard pasteboardWithName:@"jp.naver.linecamera.pasteboard" create:YES];
    [pasteboard setData:UIImagePNGRepresentation(image) forPasteboardType:@"public.png"];
    return [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"line://msg/image/%@", pasteboard.name]]];
}
@end

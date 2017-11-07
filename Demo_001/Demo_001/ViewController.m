//
//  ViewController.m
//  Demo_001
//
//  Created by HU on 2017/11/7.
//  Copyright © 2017年 HU. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    textView.scrollEnabled = NO;
    textView.editable = NO;
    textView.textContainer.lineFragmentPadding = 0;
    textView.textContainerInset = UIEdgeInsetsMake(0, 0, 0, 0);
    textView.delegate = self;
    [self.view addSubview:textView];
    NSMutableAttributedString * mutableAttriStr = [[NSMutableAttributedString alloc] initWithString:@"Wenchen"];
    NSDictionary * attris = @{NSLinkAttributeName:[NSURL URLWithString:@"http://www.baidu.com"]};
    [mutableAttriStr setAttributes:attris range:NSMakeRange(0,mutableAttriStr.length)];
    textView.attributedText = mutableAttriStr;
}
- (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)url inRange:(NSRange)characterRange
{
    return NO;
}

@end

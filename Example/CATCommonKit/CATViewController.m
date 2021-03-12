//
//  CATViewController.m
//  CATCommonKit
//
//  Created by Huaixing on 09/15/2020.
//  Copyright (c) 2020 Huaixing. All rights reserved.
//

#import "CATViewController.h"
#import <CATCommonKit.h>
#import <CoreText/CoreText.h>

@interface CATViewController ()



@end

@implementation CATViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self testNameLabel];
    [self testTextLabel];
}

- (void)testNameLabel {
    UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 100, CGRectGetWidth(self.view.frame) - 2 * 50, 100)];
    nameLabel.backgroundColor = [UIColor grayColor];
    nameLabel.textColor = [UIColor whiteColor];
    nameLabel.font = [UIFont systemFontOfSize:16];
    nameLabel.numberOfLines = 1;
    [self.view addSubview:nameLabel];
    
    NSString *name = @"代课老师发";
    
    CGSize size = [name cat_sizeWithFont:nameLabel.font limitSize:nameLabel.size];
    nameLabel.size = size;
    nameLabel.text = name;
}

- (void)testTextLabel {
    UILabel *textLabel = [[UILabel alloc] initWithFrame:CGRectMake(40, 200, CGRectGetWidth(self.view.frame) - 2 * 40, 40)];
    textLabel.backgroundColor = [UIColor grayColor];
    textLabel.numberOfLines = 2;
    [self.view addSubview:textLabel];
    
    NSString *text = @"代课老师发好的";
    
    NSMutableAttributedString *attText = [text attributedStringWithFont:[UIFont systemFontOfSize:16] lineSpace:5];
    
    textLabel.attributedText = attText;
    
    textLabel.size = [attText cat_sizeWithLimitWidth:textLabel.width];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSDate *now = [NSDate date];
    NSLog(@"--- = %@", [now dateTimeStringWithStyle:CATDateShortDateStyle]);
}

@end

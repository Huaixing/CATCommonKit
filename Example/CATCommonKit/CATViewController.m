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
    
    [self createprogressView];
    
    
}


- (void)createprogressView {
    
}


- (void)testNameLabel {
    UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, self.navigationController.navigationBar.height + [UIView statusBarHeight], self.view.width - 2 * 100, 0)];
    nameLabel.numberOfLines = 0;
    [self.view addSubview:nameLabel];

    NSString *name = @"代课老师科技大厦抠脚大汉卡华师大科技安徽的科技按还款时间的哈可接受的卡就是打卡机是打卡机会打卡机会都看见爱上的发";
    
    NSMutableAttributedString *attName = [name attributedStringWithFont:[UIFont systemFontOfSize:14] lineSpace:6];
    attName.color = [UIColor redColor];
    nameLabel.attributedText = attName;

    CGSize size = [attName cat_sizeWithLimitWidth:nameLabel.width numberOfLines:0];
    nameLabel.size = size;
}







//- (void)testNameLabel {
//    UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 100, CGRectGetWidth(self.view.frame) - 2 * 50, 100)];
//    nameLabel.backgroundColor = [UIColor grayColor];
//    nameLabel.textColor = [UIColor whiteColor];
//    nameLabel.font = [UIFont systemFontOfSize:16];
//    nameLabel.numberOfLines = 1;
//    [self.view addSubview:nameLabel];
//
//    NSString *name = @"代课老师科技大厦抠脚大汉卡华师大科技安徽的科技按还款时间的哈可接受的卡就是打卡机是打卡机会打卡机会都看见爱上的发";
//
//    CGSize size = [name cat_sizeWithFont:nameLabel.font];
//    nameLabel.size = size;
//    nameLabel.text = name;
//}
//
//- (void)testTextLabel {
//    UILabel *textLabel = [[UILabel alloc] initWithFrame:CGRectMake(40, 200, CGRectGetWidth(self.view.frame) - 2 * 40, 40)];
//    textLabel.backgroundColor = [UIColor purpleColor];
//    textLabel.numberOfLines = 2;
//    [self.view addSubview:textLabel];
//
//    NSString *text = @"代课老师科技大厦抠脚大汉卡华师大科技安徽的科技按还款时间的哈可接受的卡就是打卡机是打卡机会打卡机会都看见爱上的发";
//
//    NSMutableAttributedString *attText = [text attributedStringWithFont:[UIFont systemFontOfSize:16] lineSpace:5];
//
//    textLabel.attributedText = attText;
//
//    textLabel.size = [attText cat_sizeWithLimitWidth:textLabel.width numberOfLines:2];
//    textLabel.height = 400;
//
//}
//
//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
////    NSDate *now = [NSDate date];
//
////    NSString  *dateString = @"2019-09-16 13:00:00";
////    NSDate *date1 = [CATDateUtils dateFromDateString:dateString];
////    NSDate *now = [NSDate date];
////
////
////    NSDateComponents *cmp = [[NSCalendar currentCalendar] components:NSCalendarUnitMonth fromDate:date1 toDate:now options:0];
////    NSLog(@"--- = %ld", (long)cmp.month);
//
//    [CATHUDUtils showToastWithIcon:[UIImage imageNamed:@"cat_photo_kit_photo_selected_icon"] tip:@"等级考试来得及" inView:self.view];
//}

@end

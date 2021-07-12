//
//  FQDateTimePickerVC.m
//  FQUtils
//
//  Created by TKiOS on 2021/7/2.
//

#import "FQDateTimePickerVC.h"

@interface FQDateTimePickerVC ()<FQDateTimePickerViewDelegate>

@end

@implementation FQDateTimePickerVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    CGFloat kWidth = self.view.bounds.size.width;
    CGFloat leftX = (kWidth - 150) * 0.5;
    
    UIButton *button_1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button_1.frame = CGRectMake(leftX, 150, 150, 50);
    [button_1 setTitle:@"年 月 日" forState:UIControlStateNormal];
    [button_1 setBackgroundColor:[UIColor cyanColor]];
    [button_1 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [button_1 addTarget:self action:@selector(showDate) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button_1];
    
    UIButton *button_2 = [UIButton buttonWithType:UIButtonTypeCustom];
    button_2.frame = CGRectMake(leftX, 250, 150, 50);
    [button_2 setTitle:@"时 分 秒" forState:UIControlStateNormal];
    [button_2 setBackgroundColor:[UIColor cyanColor]];
    [button_2 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [button_2 addTarget:self action:@selector(showTime) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button_2];

    UIButton *button_3 = [UIButton buttonWithType:UIButtonTypeCustom];
    button_3.frame = CGRectMake(leftX, 350, 150, 50);
    [button_3 setTitle:@"年月日时分秒" forState:UIControlStateNormal];
    [button_3 setBackgroundColor:[UIColor cyanColor]];
    [button_3 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [button_3 addTarget:self action:@selector(showDateTime) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button_3];

    
}

-(void)showDate {
    FQDateTimePickerView *picker = [[FQDateTimePickerView alloc] initWithFQDateTimePickerModel:FQDateTimePickerModelDate];
    picker.title = @"FQDateTime";
    picker.delegate = self;
    picker.minDate = [NSDate new];
    [picker fq_show];
}

-(void)showTime {
    FQDateTimePickerView *picker = [[FQDateTimePickerView alloc] initWithFQDateTimePickerModel:FQDateTimePickerModelTime];
    picker.delegate = self;
    picker.maxDate = [NSDate new];
    picker.pickerColor = [UIColor redColor];
    [picker fq_show];
}

-(void)showDateTime {
    FQDateTimePickerView *picker = [[FQDateTimePickerView alloc] initWithFQDateTimePickerModel:FQDateTimePickerModelDateTime];
    picker.delegate = self;
    picker.maxDate = [NSDate new];
    [picker fq_show];
}

- (void)confirmActionWithTime:(nonnull NSString *)time {
    NSLog(@"time==%@", time);
    [FQToast showMessage:time];
}

- (void)scrollActionWithTime:(nonnull NSString *)time {
    NSLog(@"time==%@", time);
    [FQToast showMessage:time];
}

@end

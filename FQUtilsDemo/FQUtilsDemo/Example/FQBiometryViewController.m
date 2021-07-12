//
//  FQBiometryViewController.m
//  FQUtils
//
//  Created by TKiOS on 2021/7/6.
//

#import "FQBiometryViewController.h"

@interface FQBiometryViewController ()

@end

@implementation FQBiometryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //...
    UILabel *label = [UILabel new];
    [self.view addSubview:label];
    label.frame = CGRectMake(30, CGRectGetMaxY(self.view.bounds)*0.5 - 20, self.view.bounds.size.width - 60, 40);
    label.textAlignment = NSTextAlignmentCenter;

    UISwitch *switchBtn = [UISwitch new];
    [switchBtn setOn:NO];
    switchBtn.frame = CGRectMake(CGRectGetWidth(self.view.frame) * 0.5 - 20, CGRectGetMaxY(label.frame), 0, 0);
    [self.view addSubview:switchBtn];
    [switchBtn addTarget:self action:@selector(switchBtnChanged:) forControlEvents:UIControlEventValueChanged];
    
    
    FQBiometryType type = [FQBiometryContext fq_supports];
    if (type == FQBiometryTypeFaceID) {
        label.text = @"该设备支持脸部识别";
    } else if (type == FQBiometryTypeTouchID) {
        label.text = @"该设备支持指纹识别";
    } else {
        label.text = @"该设备不支持生物识别";
        switchBtn.enabled = NO;
    }
    
}


-(void)switchBtnChanged:(UISwitch *)sender {
    [FQBiometryContext fq_localAuthReason:@"验证身份信息" succeedHandler:^{
        
    } failureHandler:^(FQBiometryError errorCode) {
        [sender setOn:!sender.isOn];
    }];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

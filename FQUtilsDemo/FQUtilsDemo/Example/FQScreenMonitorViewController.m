//
//  FQScreenMonitorViewController.m
//  FQUtils
//
//  Created by TKiOS on 2021/7/5.
//

#import "FQScreenMonitorViewController.h"

@interface FQScreenMonitorViewController ()

@end

@implementation FQScreenMonitorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [FQScreenMonitor sharedScreenMonitor].monitorBlock = ^(FQScreenMonitorModel model) {
        if (model == FQScreenShotsModel) {
            //...截屏
            [FQToast showMessage:@"注意截屏泄露重要信息"];
        } else {
            //...录制
            [FQToast showMessage:@"不要录制自己的重要信息"];
        }
    };
    
    
    //...
    UILabel *label = [UILabel new];
    [self.view addSubview:label];
    label.frame = CGRectMake(30, 0, self.view.bounds.size.width - 60, CGRectGetMaxY(self.view.bounds));
    label.textAlignment = NSTextAlignmentCenter;
    label.numberOfLines = 0;
    
    label.text = @"只在这个页面进行屏幕监听，实现MonitorBlock回调，根据model区别截屏和录制";
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

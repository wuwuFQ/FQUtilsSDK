//
//  FQWatermarkViewController.m
//  FQUtils
//
//  Created by TKiOS on 2021/7/6.
//

#import "FQWatermarkViewController.h"

@interface FQWatermarkViewController ()

@end

@implementation FQWatermarkViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [FQUtils fq_addWatermark:@"wuwuFQ 2021-07-09" withColor:[UIColor lightGrayColor] inView:self.view];
    
    UILabel *label = [UILabel new];
    [self.view addSubview:label];
    label.frame = CGRectMake(30, 300, self.view.bounds.size.width - 60, 80);
    label.numberOfLines = 0;
    label.text =  @"添加水印的方式很便捷，可以指定View，也可以写在Base类里面";

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

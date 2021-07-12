//
//  FQScreenShotViewController.m
//  FQUtils
//
//  Created by TKiOS on 2021/7/6.
//

#import "FQScreenShotViewController.h"

@interface FQScreenShotViewController ()

@end

@implementation FQScreenShotViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UILabel *label = [UILabel new];
    [self.view addSubview:label];
    label.frame = CGRectMake(30, 100, self.view.bounds.size.width - 60, 220);
    label.numberOfLines = 0;
    label.text =  @"在开发中经常需要获取当前窗口的控制器或视图所在的控制器，FQUtils提供了三个方法：\n+(UIWindow *)fq_getKeyWindow \n+(UIViewController*)fq_currentViewController \n+(UIViewController *)fq_viewControllerOfView:(UIView *)view";
    
    UIButton *button_1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button_1.frame = CGRectMake(60, 330, 200, 50);
    [button_1 setTitle:@"获取当前页面的截图" forState:UIControlStateNormal];
    [button_1 setBackgroundColor:[UIColor cyanColor]];
    [button_1 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [button_1 addTarget:self action:@selector(screenShot) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button_1];

}

- (void)screenShot {
    UIImage *img = [FQUtils fq_imageWithScreenShot];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:img];
    [self.view addSubview:imageView];
    imageView.frame = CGRectMake(100, 390, 200, 300);
}
@end

//
//  ViewController.m
//  FQUtilsDemo
//
//  Created by TKiOS on 2021/7/12.
//

#import "ViewController.h"
#import "FQDateTimePickerVC.h"
#import "FQScreenMonitorViewController.h"
#import "FQBiometryViewController.h"
#import "FQHighlightViewController.h"
#import "FQWatermarkViewController.h"
#import "FQScreenShotViewController.h"


@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, copy) NSArray *listTitles;
@end

@implementation ViewController

-(UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.tableFooterView = [UIView new];

    }
    return _tableView;
}

-(NSArray *)listTitles {
    return @[@"日期和时间选择器",
             @"监听截屏和录屏",
             @"指纹和脸部识别",
             @"文本关键字高亮",
             @"添加水印",
             @"截图和当前控制器"];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view addSubview:self.tableView];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.listTitles.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"cellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellIdentifier];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"FQ: %@", self.listTitles[indexPath.row]];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    UIViewController *vc = [UIViewController new];
    switch (indexPath.row) {
        case 0:
            vc = [FQDateTimePickerVC new];
            break;
        case 1:
            vc = [FQScreenMonitorViewController new];
            break;
        case 2:
            vc = [FQBiometryViewController new];
            break;
        case 3:
            vc = [FQHighlightViewController new];
            break;
        case 4:
            vc = [FQWatermarkViewController new];
            break;
        case 5:
            vc = [FQScreenShotViewController new];
            break;
        default:
            break;
    }
    vc.title = self.listTitles[indexPath.row];
    vc.view.backgroundColor = [UIColor whiteColor];
    [self.navigationController pushViewController:vc animated:YES];
}
@end

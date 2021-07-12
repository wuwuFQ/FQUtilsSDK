//
//  FQHighlightViewController.m
//  FQUtils
//
//  Created by TKiOS on 2021/7/6.
//

#import "FQHighlightViewController.h"

@interface FQHighlightViewController ()

@end

@implementation FQHighlightViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSArray *keyword = @[@"我", @"等", @"你"];
    UILabel *label = [UILabel new];
    [self.view addSubview:label];
    label.frame = CGRectMake(30, 100, self.view.bounds.size.width - 60, 20);
    label.textAlignment = NSTextAlignmentCenter;
    label.text =  [NSString stringWithFormat:@"关键字：%@", [keyword componentsJoinedByString:@","]];

    
    UILabel *label_2 = [UILabel new];
    [self.view addSubview:label_2];
    label_2.frame = CGRectMake(30, 130, self.view.bounds.size.width - 60, self.view.bounds.size.height - 130);
    label_2.numberOfLines = 0;
    NSString *text = @"我一直在等你，从晨钟暮鼓的每一天，到春夏秋冬的更替；我一直在等你，从激情四射的青春小伙子，直到现在的白发苍苍的暮年。然而，可惜，你没有回来…… \n我一直在等你，但不知道你到底在哪里，也不知道你离我还有多远，是相隔千山万水，还是近在眼前。我只知道，等你，已经成为了我的一个执念，不论你回不回来，不论你会不会来，我都在这里等你，在我们分手的原地等你，直到有一天你出现在我的面前，或者是我走到了自己的人生生命终点……\n我一直在等你，其实等的不是你这个人，而是在等曾经的我们的那份爱情的再次出现，虽然我知道再次回来的可能是一张无法复原的褶皱的情感，但我依然愿意沉浸在这份往日的那份深情时光里一边等你，一边等爱，一边慢慢老去……\n我一直在等你，等一个带走了我的一颗心，让我的灵魂四处飘零的人，我知道，我的人虽然不在你的身边，但我的心从来没有走出对你的牵挂，而我的灵魂里刻满了对你的思念……\n我一直在等你，等一个让我一生都放不下的人，等一份让我刻骨铭心的爱恋，等一段蚀骨的深情渴盼。我想，不论你回不回来，不论你会不会来，我都会一生守着孤独与寂寞为伴。你来，我守着唯有你在我心中的孤独；你不来，我伴着心中的那份寂寞，与岁月诉说着对你的相思，对那份爱的眷恋……";

    label_2.attributedText = [FQUtils fq_setAttributedHighlightString:text keyWords:keyword highlightColor:[UIColor redColor] highlightFont:[UIFont systemFontOfSize:16]];
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

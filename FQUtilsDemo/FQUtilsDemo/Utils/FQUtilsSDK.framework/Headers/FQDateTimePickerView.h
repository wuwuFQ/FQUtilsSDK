//
//  FQDateTimePickerView.h
//  FQTools
//
//  Created by TKiOS on 2021/5/26.
//

#import <UIKit/UIKit.h>
typedef enum{
    FQDateTimePickerModelDate,// 年月日 2021-05-26
    FQDateTimePickerModelTime,// 时分秒 HH:mm:ss
    FQDateTimePickerModelDateTime,//年月日 时分秒 yyyy-mm-dd HH:mm:ss
} FQDateTimePickerModel;


NS_ASSUME_NONNULL_BEGIN
@protocol FQDateTimePickerViewDelegate <NSObject>
//确认事件
- (void)confirmActionWithTime:(NSString *)time;
//滚动事件
- (void)scrollActionWithTime:(NSString *)time;
@end


@interface FQDateTimePickerView : UIView
/*----------------   UI  ------------------------*/
//确定按钮文本
@property (nonatomic, copy) NSString *confirmText;
//确定按钮颜色 默认黑色
@property (nonatomic, strong) UIColor *confirmColor;
//确定按钮字体 默认系统18pt
@property (nonatomic, strong) UIFont *confirmFont;

//取消按钮文本
@property (nonatomic, copy) NSString *cancelText;
//取消按钮颜色 默认黑色
@property (nonatomic, strong) UIColor *cancelColor;
//取消按钮字体 默认系统18pt
@property (nonatomic, strong) UIFont *cancelFont;

//标题文本 默认 ""
@property (nonatomic, copy) NSString *title;
//标题颜色 默认黑色
@property (nonatomic, strong) UIColor *titleColor;
//标题字体 默认系统SFUI-Regular 16.00pt
@property (nonatomic, strong) UIFont *titleFont;

//滚轮日期文本颜色(默认黑色)
@property (nonatomic, strong) UIColor *pickerColor;
//滚轮日期文本字体
@property (nonatomic, strong) UIFont *pickerFont;


/*----------------   NSDate  ------------------------*/
//限制最大时间
@property (nonatomic, strong) NSDate *maxDate;
//限制最小时间
@property (nonatomic, strong) NSDate *minDate;
//默认时间
@property (nonatomic, strong) NSDate *defaultDate;


@property (nonatomic, weak) id<FQDateTimePickerViewDelegate> delegate;

/// 初始化
/// @param pickerModel FQDateTimePickerModel选择器模式
- (instancetype)initWithFQDateTimePickerModel:(FQDateTimePickerModel)pickerModel;
///请在展示之前，设置好需要的属性
- (void)fq_show;
@end

NS_ASSUME_NONNULL_END

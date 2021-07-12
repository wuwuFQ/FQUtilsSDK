//
//  FQUtils.h
//  FQUtils
//
//  Created by TKiOS on 2021/7/5.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface FQUtils : NSObject

/// 当前屏幕的截屏图片
+(UIImage *)fq_imageWithScreenShot;


/// 添加水印
/// @param text 水印文字
/// @param color 水印颜色
/// @param parent 添加水印的view
+(void)fq_addWatermark:(NSString*)text withColor:(UIColor*)color inView:(UIView*)parent;
///移除水印
+(void)fq_removeWatermarkInView:(UIView*)view;


/// 获取KeyWindow
+(UIWindow *)fq_getKeyWindow;

/// 获取当前控制器
+(UIViewController*)fq_getCurrentViewController;

/// 获取view所在的控制器
/// @param view 参照视图
+(UIViewController *)fq_getCurrentViewControllerOfView:(UIView *)view;

/** 文本高亮 */

/// 设置文本高亮
/// @param text 需要高亮的文本
/// @param keyWord 高亮关键字
/// @param color 高亮的颜色
/// @param font 高亮的字体
+ (NSMutableAttributedString *)fq_setAttributedHighlightString:(NSString *)text keyWord:(NSString *)keyWord highlightColor:(nullable UIColor*)color highlightFont:(nullable UIFont*)font;

/// 设置文本高亮
/// @param text 需要高亮的文本
/// @param keyWord 高亮关键字 @"A"
/// @param color 高亮的颜色
/// @param font 高亮的字体
/// @param attributeStr 如果高亮文本之前是富文本，传入attribute对象
+ (NSMutableAttributedString *)fq_setAttributedHighlightString:(NSString *)text keyWord:(NSString *)keyWord highlightColor:(nullable UIColor*)color highlightFont:(nullable UIFont*)font withAttributeStr:(nullable NSMutableAttributedString *)attributeStr;

/// 设置文本高亮（关键字是数字）
/// @param text 需要高亮的文本
/// @param keyWords 高亮关键字数组 eg: @[@"a", @"B", @"f"]
/// @param color 高亮的颜色
/// @param font 高亮的字体
+(NSMutableAttributedString *)fq_setAttributedHighlightString:(NSString *)text keyWords:(NSArray<NSString*>*)keyWords highlightColor:(nullable UIColor*)color highlightFont:(nullable UIFont*)font;

/// 设置文本高亮（关键字是数字）
/// @param text 需要高亮的文本
/// @param keyWords 高亮关键字数组 eg: @[@"a", @"B", @"f"]
/// @param color 高亮的颜色
/// @param font 高亮的字体
/// @param attributeStr 如果高亮文本之前是富文本，传入attribute对象
+(NSMutableAttributedString *)fq_setAttributedHighlightString:(NSString *)text keyWords:(NSArray<NSString*>*)keyWords highlightColor:(nullable UIColor*)color highlightFont:(nullable UIFont*)font withAttributeStr:(nullable NSMutableAttributedString *)attributeStr;

@end

NS_ASSUME_NONNULL_END

//
//  FQToast.h
//  FQUtils
//
//  Created by TKiOS on 2021/7/6.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FQToast : NSObject

/// 展示FQToast
+(void)showMessage:(NSString*)msg;
/// 展示FQToast
+(void)showMessage:(NSString*)msg
          duration:(NSInteger)duration;

/// 展示在keyWindow上的FQToast
/// @param msg 展示的文本
/// @param duration 默认显示2.0秒
/// @param position 默认位置是父视图的center 可传入NSValue *position = [NSValue valueWithCGPoint:CGPointMake(100, 100)]; 来指定FQToast的中心位置
+(void)showMessage:(NSString*)msg
          duration:(NSInteger)duration
          position:(id)position;

/// 展示在view上的FQToast
+(void)showMessage:(NSString*)msg
           forView:(nullable UIView*)view;
/// 展示在view上的FQToast
+(void)showMessage:(NSString*)msg
          duration:(NSInteger)duration
           forView:(UIView*)view;

/// 展示在view上的FQToast
/// @param msg 展示的文本
/// @param duration 默认显示2.0秒
/// @param position 默认位置是父视图的center 可传入NSValue *position = [NSValue valueWithCGPoint:CGPointMake(100, 100)]; 来指定FQToast的中心位置
/// @param view 默认是keyWindow
+(void)showMessage:(NSString*)msg
          duration:(NSInteger)duration
          position:(id)position
           forView:(UIView*)view;

@end

NS_ASSUME_NONNULL_END
